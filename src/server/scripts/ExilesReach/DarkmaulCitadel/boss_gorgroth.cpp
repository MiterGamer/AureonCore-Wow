/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Creature.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "darkmaul_citadel.h"

enum GorgrothSpells
{
    SPELL_SUMMON_GHOULS            = 306097,
    SPELL_READY_COMBAT             = 326862,
    SPELL_SHADOW_BOLT              = 305913,
    SPELL_UNSTABLE_SHADOWS         = 308527,
    SPELL_UNSTABLE_SHADOWS_MISSILE = 308499,
    SPELL_DARK_RITUAL              = 306800,
    SPELL_FINAL_SACRIFICE          = 318234
};

enum GorgrothEvents
{
    EVENT_SHADOW_BOLT = 1,
    EVENT_UNSTABLE_SHADOWS,
    EVENT_DARK_RITUAL
};

enum GorgrothTexts
{
    SAY_AGGRO     = 0,
    SAY_SACRIFICE = 1
};

Position const DecayingCorpsePositions[] =
{
    { 834.59894f, -1774.5209f, 248.67735f, 0.41719484f },
    { 831.05554f, -1780.4827f, 248.68427f, 4.28758192f },
    { 832.4583f,  -1785.974f,  248.68011f, 1.12278867f },
    { 841.47394f, -1772.5f,    248.67065f, 5.32793188f },
    { 836.8125f,  -1768.3507f, 248.67055f, 2.46004391f }
};

// 156814 - Gor'groth
struct boss_gorgroth : public ScriptedAI
{
    boss_gorgroth(Creature* creature) : ScriptedAI(creature), instance(creature->GetInstanceScript()), _summons(me), _introDone(false), _sacrificed(false) { }

    void Reset() override
    {
        _events.Reset();
        _scheduler.CancelAll();
        _summons.DespawnAll();
        _introDone = false;
        _sacrificed = false;

        if (instance && instance->GetBossState(DATA_RAVNYR) == DONE)
        {
            _introDone = true;
            me->SetReactState(REACT_PASSIVE);
            me->SetImmuneToPC(true);
            me->SetImmuneToNPC(true);
            me->SetUninteractible(true);
            me->SetVisible(false);
            return;
        }

        me->SetReactState(REACT_AGGRESSIVE);
        me->SetImmuneToPC(true);
        me->SetImmuneToNPC(true);
        me->SetUninteractible(false);
        me->SetVisible(true);
    }

    void DoAction(int32 action) override
    {
        if (action != ACTION_RITUAL_RESET)
            return;

        _sacrificed = false;
        _introDone = false;
        me->InterruptNonMeleeSpells(true);
        _EnterEvadeMode(EvadeReason::Other);
        me->SetFullHealth();
        me->NearTeleportTo(me->GetHomePosition());
        me->SetVisible(true);
        me->SetUninteractible(false);
        me->SetImmuneToPC(true);
        me->SetImmuneToNPC(true);
        me->SetReactState(REACT_AGGRESSIVE);
        Reset();
    }

    void MoveInLineOfSight(Unit* who) override
    {
        ScriptedAI::MoveInLineOfSight(who);

        if (_introDone || !who->IsPlayer() || !who->IsAlive())
            return;

        if (instance && instance->GetBossState(DATA_RAVNYR) == DONE)
            return;

        if (!me->IsWithinDistInMap(who, 75.0f))
            return;

        StartIntro();
    }

    void JustSummoned(Creature* summon) override { _summons.Summon(summon); }
    void SummonedCreatureDespawn(Creature* summon) override { _summons.Despawn(summon); }

    void JustEngagedWith(Unit* /*who*/) override
    {
        if (_sacrificed)
            return;

        Talk(SAY_AGGRO);

        if (instance)
        {
            instance->SetBossState(DATA_RAVNYR, IN_PROGRESS);
            instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);
        }

        _events.ScheduleEvent(EVENT_SHADOW_BOLT, 6s);
        _events.ScheduleEvent(EVENT_UNSTABLE_SHADOWS, 12s);
        _events.ScheduleEvent(EVENT_DARK_RITUAL, 22s);
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        if (_sacrificed)
            return;

        if (instance)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            if (instance->GetBossState(DATA_RAVNYR) == IN_PROGRESS)
                instance->SetBossState(DATA_RAVNYR, FAIL);
        }

        _introDone = false;
        ScriptedAI::EnterEvadeMode(why);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo*/) override
    {
        if (_sacrificed)
        {
            damage = 0;
            return;
        }

        if (!me->HealthBelowPctDamaged(46, damage))
            return;

        damage = 0;
        Sacrifice();
    }

    void UpdateAI(uint32 diff) override
    {
        if (me->IsInCombat() && !_sacrificed && instance)
        {
            bool livingPlayer = false;
            instance->instance->DoOnPlayers([&](Player* player)
            {
                if (player->IsAlive() && me->IsWithinDistInMap(player, 100.0f))
                    livingPlayer = true;
            });
            if (!livingPlayer)
            {
                EnterEvadeMode(EvadeReason::Other);
                return;
            }
        }
        _scheduler.Update(diff);

        if (!_introDone && !me->IsInCombat())
        {
            if (instance && instance->GetBossState(DATA_RAVNYR) != DONE)
                if (Player* player = me->SelectNearestPlayer(75.0f))
                    if (player->IsAlive())
                        StartIntro();
        }

        if (_sacrificed || !UpdateVictim())
            return;

        _events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_SHADOW_BOLT:
                    DoCastVictim(SPELL_SHADOW_BOLT);
                    _events.Repeat(16s);
                    break;
                case EVENT_UNSTABLE_SHADOWS:
                    DoCastSelf(SPELL_UNSTABLE_SHADOWS);
                    _events.Repeat(20s);
                    break;
                case EVENT_DARK_RITUAL:
                    DoCastSelf(SPELL_DARK_RITUAL);
                    _events.Repeat(25s);
                    break;
                default:
                    break;
            }

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }
    }

private:
    InstanceScript* const instance;
    EventMap _events;
    TaskScheduler _scheduler;
    SummonList _summons;
    bool _introDone;
    bool _sacrificed;

    void StartIntro()
    {
        if (!instance || instance->GetBossState(DATA_TUNK) != DONE || instance->GetBossState(DATA_RAVNYR) == DONE)
            return;
        _introDone = true;
        DoCastSelf(SPELL_SUMMON_GHOULS);

        for (Position const& pos : DecayingCorpsePositions)
            me->SummonCreature(NPC_DECAYING_CORPSE, pos, TEMPSUMMON_TIMED_DESPAWN, 5min);

        _scheduler.Schedule(14s, [this](TaskContext const&)
        {
            DoCastSelf(SPELL_READY_COMBAT, true);
            me->SetImmuneToPC(false);
            me->SetImmuneToNPC(false);
        });
    }

    void Sacrifice()
    {
        Creature* ravnyr = instance ? instance->GetCreature(DATA_RAVNYR) : nullptr;
        if (!ravnyr || !ravnyr->IsAIEnabled())
        {
            EnterEvadeMode(EvadeReason::Other);
            return;
        }
        _sacrificed = true;
        _events.Reset();
        me->InterruptNonMeleeSpells(false);
        me->AttackStop();
        me->CombatStop(true);
        me->SetReactState(REACT_PASSIVE);
        me->SetUninteractible(true);
        me->SetImmuneToPC(true);
        me->GetMotionMaster()->Clear();
        me->StopMoving();

        Talk(SAY_SACRIFICE);

        DoCast(ravnyr, SPELL_FINAL_SACRIFICE, true);
        ravnyr->AI()->DoAction(ACTION_GORGROTH_SACRIFICED);

        _scheduler.Schedule(14s, [this](TaskContext const&)
        {
            if (instance)
                instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);

            me->SetVisible(false);
            me->SetUninteractible(true);
        });
    }
};

// 308527 - Unstable Shadows
class spell_gorgroth_unstable_shadows : public SpellScript
{
    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_UNSTABLE_SHADOWS_MISSILE });
    }

    void HandleAfterCast() const
    {
        Unit* caster = GetCaster();
        Creature* creature = caster->ToCreature();
        if (!creature || !creature->IsAIEnabled())
            return;

        Unit* target = creature->AI()->SelectTarget(SelectTargetMethod::Random, 0, 100.0f, true);
        if (!target)
            target = creature->GetVictim();
        if (!target)
            return;

        caster->CastSpell(target, SPELL_UNSTABLE_SHADOWS_MISSILE, CastSpellExtraArgsInit{
            .TriggerFlags = TRIGGERED_IGNORE_CAST_IN_PROGRESS | TRIGGERED_DONT_REPORT_CAST_ERROR,
            .TriggeringSpell = GetSpell()
        });
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_gorgroth_unstable_shadows::HandleAfterCast);
    }
};

void AddSC_boss_gorgroth()
{
    RegisterDarkmaulCitadelCreatureAI(boss_gorgroth);
    RegisterSpellScript(spell_gorgroth_unstable_shadows);
}
