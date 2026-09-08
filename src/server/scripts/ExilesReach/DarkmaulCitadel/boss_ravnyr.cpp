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
#include "PetDefines.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "darkmaul_citadel.h"

enum RavnyrSpells
{
    SPELL_RITUAL_AWAKEN          = 318318,
    SPELL_POSSESSED_ACTIVATE     = 321403,
    SPELL_POSSESSED_VISUAL       = 1238244,
    SPELL_RITUAL_START_BUNNY     = 321904,
    SPELL_NECROTIC_BREATH        = 305515,
    SPELL_WING_BUFFET            = 305567,
    SPELL_RITUAL_DEFEAT          = 1238253,
    SPELL_KALECGOS_VISAGE        = 1238361,
    SPELL_LEAVE_DARKMAUL_CITADEL = 319030
};

enum RavnyrEvents
{
    EVENT_NECROTIC_BREATH = 1,
    EVENT_WING_BUFFET
};

enum RavnyrTexts
{
    SAY_WARNING_NECROTIC_BREATH = 1
};

enum RavnyrMisc
{
    QUEST_DUNGEON_DARKMAUL_CITADEL        = 55992,
    QUEST_DUNGEON_DARKMAUL_CITADEL_HORDE  = 59984,
    NPC_KILL_CREDIT_LEAVE_DARKMAUL        = 161350,
    GOSSIP_MENU_KALECGOS_LEAVE_DARKMAUL   = 39497,
    GOSSIP_OPTION_KALECGOS_LEAVE_DARKMAUL = 0,
    ANIM_KIT_RAVNYR_RITUAL                = 11415,
    ANIM_KIT_RAVNYR_RISE                  = 11062
};

enum DecayingCorpseSpells
{
    SPELL_DECAYING_CORPSE_VISUAL = 1238235
};

enum DarkmaulCompanionMisc
{
    FACTION_DARKMAUL_COMPANION = 1665
};

// 156501 - Ravnyr (Kalecgos possessed). Sniff CreateObject1 map 2236:
// Display 114576, AiID 11415, Z 248.67969. Awaken: SET_AI_ANIM_KIT 0 + oneshot 11062.
struct boss_ravnyr : public ScriptedAI
{
    boss_ravnyr(Creature* creature) : ScriptedAI(creature), instance(creature->GetInstanceScript()), _defeated(false), _awakening(false) { }

    void Reset() override
    {
        _events.Reset();
        _scheduler.CancelAll();
        _awakening = false;

        if (instance && instance->GetBossState(DATA_RAVNYR) == DONE)
        {
            BecomeLeaveNpc();
            return;
        }

        _defeated = false;
        me->RemoveAurasDueToSpell(SPELL_POSSESSED_VISUAL);
        me->RemoveAurasDueToSpell(SPELL_POSSESSED_ACTIVATE);
        me->RemoveAurasDueToSpell(SPELL_RITUAL_DEFEAT);
        me->SetFullHealth();
        me->SetReactState(REACT_PASSIVE);
        me->SetImmuneToPC(true);
        me->SetImmuneToNPC(true);
        me->SetUninteractible(true);
        me->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        me->SetFaction(FACTION_MONSTER_2);
        me->SetStandState(UNIT_STAND_STATE_STAND);
        me->SetAIAnimKitId(ANIM_KIT_RAVNYR_RITUAL);
    }

    void DoAction(int32 action) override
    {
        if (action != ACTION_GORGROTH_SACRIFICED || _awakening || _defeated)
            return;

        _awakening = true;

        _scheduler.Schedule(11s, [this](TaskContext const&)
        {
            DoCastSelf(SPELL_RITUAL_AWAKEN);
        });

        _scheduler.Schedule(14s, [this](TaskContext const&)
        {
            me->SetAIAnimKitId(0);
            DoCastSelf(SPELL_POSSESSED_ACTIVATE, true);
            DoCastSelf(SPELL_POSSESSED_VISUAL, true);
            me->PlayOneShotAnimKitId(ANIM_KIT_RAVNYR_RISE);
            me->SetUninteractible(false);
            me->SetImmuneToPC(false);
            me->SetImmuneToNPC(false);
        });

        _scheduler.Schedule(20s, [this](TaskContext const&)
        {
            if (Creature* bunny = me->FindNearestCreature(NPC_RITUAL_INVIS_BUNNY, 20.0f))
                bunny->CastSpell(bunny, SPELL_RITUAL_START_BUNNY, true);

            if (instance)
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me, 1);

            me->SetReactState(REACT_AGGRESSIVE);
            if (Player* player = me->SelectNearestPlayer(80.0f))
                AttackStart(player);

            _events.ScheduleEvent(EVENT_NECROTIC_BREATH, 2s);
            _events.ScheduleEvent(EVENT_WING_BUFFET, 15s);
        });
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        if (_defeated || !_awakening)
            return;

        if (instance)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            if (instance->GetBossState(DATA_RAVNYR) == IN_PROGRESS)
                instance->SetBossState(DATA_RAVNYR, FAIL);
            if (Creature* gorgroth = instance->GetCreature(DATA_GORGROTH))
                gorgroth->AI()->DoAction(ACTION_RITUAL_RESET);
        }

        _awakening = false;
        ScriptedAI::EnterEvadeMode(why);
    }

    void OnSpellCast(SpellInfo const* spell) override
    {
        if (spell->Id != SPELL_NECROTIC_BREATH)
            return;

        if (Player* player = me->SelectNearestPlayer(80.0f))
            Talk(SAY_WARNING_NECROTIC_BREATH, player);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo*/) override
    {
        if (_defeated || !_awakening)
        {
            damage = 0;
            return;
        }

        if (damage >= me->GetHealth() || me->HealthBelowPctDamaged(46, damage))
        {
            damage = 0;
            Defeat();
        }
    }

    bool OnGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
    {
        if (menuId != GOSSIP_MENU_KALECGOS_LEAVE_DARKMAUL || gossipListId != GOSSIP_OPTION_KALECGOS_LEAVE_DARKMAUL)
            return false;

        if (!_defeated || !instance || instance->GetBossState(DATA_RAVNYR) != DONE ||
            !player->IsAlive() || player->IsInCombat() || !me->InSamePhase(player) ||
            !me->IsWithinDistInMap(player, INTERACTION_DISTANCE))
            return true;

        if (player->GetQuestStatus(QUEST_DUNGEON_DARKMAUL_CITADEL) != QUEST_STATUS_INCOMPLETE
            && player->GetQuestStatus(QUEST_DUNGEON_DARKMAUL_CITADEL_HORDE) != QUEST_STATUS_INCOMPLETE)
            return false;

        player->KilledMonsterCredit(player->GetQuestStatus(QUEST_DUNGEON_DARKMAUL_CITADEL_HORDE) == QUEST_STATUS_INCOMPLETE
            ? 167663 : NPC_KILL_CREDIT_LEAVE_DARKMAUL);
        CloseGossipMenuFor(player);
        player->CastSpell(player, SPELL_LEAVE_DARKMAUL_CITADEL, true);
        return true;
    }

    void UpdateAI(uint32 diff) override
    {
        if (_awakening && !_defeated && instance)
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

        if (_defeated || !UpdateVictim())
            return;

        _events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_NECROTIC_BREATH:
                    DoCastVictim(SPELL_NECROTIC_BREATH);
                    _events.Repeat(23s);
                    break;
                case EVENT_WING_BUFFET:
                    DoCastSelf(SPELL_WING_BUFFET);
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
    bool _defeated;
    bool _awakening;

    void DropEncounterCombat()
    {
        me->CombatStop(true);
        me->ClearInCombat();

        if (!instance)
            return;

        instance->instance->DoOnPlayers([](Player* player)
        {
            player->CombatStop(true);
            player->ClearInCombat();
        });

        for (uint32 entry : { NPC_CAPTAIN_GARRICK_DARKMAUL, NPC_HENRY_GARRICK_DARKMAUL, NPC_JAINA_PROUDMOORE_DARKMAUL })
            if (Creature* companion = me->FindNearestCreature(entry, 150.0f))
            {
                companion->CombatStop(true);
                companion->ClearInCombat();
            }
    }

    void Defeat()
    {
        if (_defeated)
            return;

        _defeated = true;
        _events.Reset();
        me->InterruptNonMeleeSpells(false);
        me->AttackStop();
        me->SetReactState(REACT_PASSIVE);
        me->SetImmuneToPC(true);
        me->SetImmuneToNPC(true);
        me->SetFaction(FACTION_FRIENDLY);
        me->ApplySpellImmune(SPELL_RITUAL_DEFEAT, IMMUNITY_EFFECT, SPELL_EFFECT_INSTAKILL, true);

        me->RemoveAurasDueToSpell(SPELL_POSSESSED_VISUAL);
        me->RemoveAurasDueToSpell(SPELL_POSSESSED_ACTIVATE);
        DoCastSelf(SPELL_RITUAL_DEFEAT, true);

        if (instance)
        {
            instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            instance->SetBossState(DATA_RAVNYR, DONE);
        }

        DropEncounterCombat();

        _scheduler.Schedule(6s, [this](TaskContext const&)
        {
            BecomeLeaveNpc();
        });
    }

    void BecomeLeaveNpc()
    {
        _defeated = true;
        me->RemoveAurasDueToSpell(SPELL_RITUAL_DEFEAT);
        me->RemoveAurasDueToSpell(SPELL_POSSESSED_VISUAL);
        me->RemoveAurasDueToSpell(SPELL_POSSESSED_ACTIVATE);
        me->RemoveUnitFlag(UNIT_FLAG_SKINNABLE);
        me->RemoveDynamicFlag(UNIT_DYNFLAG_LOOTABLE);
        me->SetReactState(REACT_PASSIVE);
        me->SetImmuneToPC(true);
        me->SetImmuneToNPC(true);
        me->SetFaction(FACTION_FRIENDLY);
        me->SetUninteractible(false);
        me->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        me->SetStandState(UNIT_STAND_STATE_STAND);
        me->SetFullHealth();
        me->SetAIAnimKitId(0);
        DoCastSelf(SPELL_KALECGOS_VISAGE, true);
        DropEncounterCombat();
    }
};

// 156913 - Decaying Corpse
struct npc_decaying_corpse_darkmaul : public ScriptedAI
{
    npc_decaying_corpse_darkmaul(Creature* creature) : ScriptedAI(creature) { }

    void JustAppeared() override
    {
        DoCastSelf(SPELL_DECAYING_CORPSE_VISUAL, true);
    }
};

// 161350 / 161504 / 245401 - dungeon companions
struct npc_darkmaul_companion : public ScriptedAI
{
    npc_darkmaul_companion(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        me->SetWalk(false);
        me->SetFaction(FACTION_DARKMAUL_COMPANION);
        me->SetReactState(REACT_AGGRESSIVE);
        me->AddUnitState(UNIT_STATE_IGNORE_PATHFINDING);
    }

    void JustAppeared() override
    {
        Reset();
        if (Player* player = me->SelectNearestPlayer(150.0f))
            FollowPlayer(player);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo*/) override
    {
        if (me->GetHealth() <= damage)
            damage = me->GetHealth() - 1;
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        if (why == EvadeReason::NoPath)
            return;

        if (!_EnterEvadeMode(why))
            return;

        if (Player* player = me->SelectNearestPlayer(150.0f))
            FollowPlayer(player);
    }

    void UpdateAI(uint32 /*diff*/) override
    {
        if (InstanceScript* instance = me->GetInstanceScript())
        {
            if (instance->GetBossState(DATA_RAVNYR) == DONE)
            {
                if (me->IsInCombat())
                {
                    me->CombatStop(true);
                    me->ClearInCombat();
                }
                if (Player* player = me->SelectNearestPlayer(150.0f))
                    FollowPlayer(player);
                return;
            }
        }

        Player* player = me->SelectNearestPlayer(150.0f);
        if (!player || !player->IsAlive())
            return;

        if (Unit* assist = SelectAssistTarget(player))
        {
            if (me->GetVictim() != assist)
                AttackStart(assist);
            UpdateVictim();
            return;
        }

        if (UpdateVictim())
            return;

        FollowPlayer(player);
    }

private:
    float FollowAngle() const
    {
        switch (me->GetEntry())
        {
            case NPC_CAPTAIN_GARRICK_DARKMAUL:
                return float(M_PI);
            case NPC_HENRY_GARRICK_DARKMAUL:
                return float(M_PI / 2.0);
            default:
                return float(3.0 * M_PI / 2.0);
        }
    }

    void FollowPlayer(Player* player)
    {
        if (!player || me->GetVictim())
            return;

        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == FOLLOW_MOTION_TYPE)
            return;

        me->SetWalk(false);
        me->GetMotionMaster()->Clear();
        me->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, FollowAngle(), {}, true);
    }

    Unit* SelectAssistTarget(Player* player) const
    {
        if (Unit* victim = player->GetVictim())
            if (me->IsValidAttackTarget(victim))
                return victim;

        if (Unit* attacker = player->getAttackerForHelper())
            if (me->IsValidAttackTarget(attacker))
                return attacker;

        return nullptr;
    }
};

void AddSC_boss_ravnyr()
{
    RegisterDarkmaulCitadelCreatureAI(boss_ravnyr);
    RegisterDarkmaulCitadelCreatureAI(npc_decaying_corpse_darkmaul);
    RegisterDarkmaulCitadelCreatureAI(npc_darkmaul_companion);
}
