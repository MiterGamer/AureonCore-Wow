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

#include "GameObject.h"
#include "GameObjectAI.h"
#include "Conversation.h"
#include "DB2Stores.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "QuestDef.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SpellInfo.h"
#include "Spell.h"
#include "SpellScript.h"
#include "TaskScheduler.h"
#include "TemporarySummon.h"
#include "Vehicle.h"
#include <unordered_set>
#include "wild_coast_paths.h"

enum Sniff043355
{
    QUEST_EXPLORERS_IN_PERIL        = 70122,
    QUEST_FROM_SUCH_GREAT_HEIGHTS   = 66101,
    QUEST_AZEROTHS_VOICE            = 78715,
    QUEST_BRONZEBEARD_FAMILY        = 80500,

    NPC_CREDIT_RELLID               = 194138,
    NPC_CREDIT_RIB_CAGE             = 194139,
    NPC_CREDIT_SURVEYOR             = 184913,
    NPC_CREDIT_MAGNI                = 218347,
    NPC_CREDIT_BRANN                = 220367,

    SPELL_AZEROTHS_VOICE            = 444955,

    SCENE_AZEROTHS_VOICE            = 3400,

    GOSSIP_MENU_MAGNI_BEGIN         = 33853,
    GOSSIP_OPTION_MAGNI_BEGIN       = 0,
    GOSSIP_MENU_BRANN_PORTRAIT      = 34132,
    GOSSIP_OPTION_BRANN_PORTRAIT    = 0
};

namespace
{
// Only observed actions from dump_12.1.0.69587_2026-09-05_04-33-55.
bool NeedsCoastCredit(Player* player, uint32 questId, uint32 credit)
{
    if (player->GetQuestStatus(questId) != QUEST_STATUS_INCOMPLETE)
        return false;
    if (Quest const* quest = sObjectMgr->GetQuestTemplate(questId))
        for (QuestObjective const& objective : quest->GetObjectives())
            if (objective.Type == QUEST_OBJECTIVE_MONSTER && objective.ObjectID == int32(credit))
                return player->GetQuestObjectiveData(objective) < objective.Amount;
    return false;
}

struct CoastActor { uint32 index; int32 id; uint32 entry; };

void CoastConversation(Player* player, uint32 id, std::initializer_list<CoastActor> actors,
    Creature* personalActor = nullptr)
{
    Conversation* conversation = Conversation::CreateConversation(id, player, *player, player->GetGUID(), nullptr, false);
    if (!conversation)
        return;
    for (CoastActor const& actor : actors)
    {
        Creature* creature = personalActor && personalActor->GetEntry() == actor.entry
            ? personalActor : player->FindNearestCreature(actor.entry, 100.0f);
        if (creature)
            conversation->AddActor(actor.id, actor.index, creature->GetGUID());
    }
    if (!conversation->Start())
        delete conversation;
}

bool CoastRescue(Player* player, uint32 credit, uint32 entry, Position const& position, uint32 conversationId,
    int32 actorId, Milliseconds dialogueDelay)
{
    if (!NeedsCoastCredit(player, QUEST_EXPLORERS_IN_PERIL, credit))
        return false;
    // Keep the world quest target available for other players; the freed actor is personal.
    Creature* rescued = player->SummonCreature(entry, position, TEMPSUMMON_TIMED_DESPAWN, 90s, 0, 0, player->GetGUID());
    if (!rescued)
        return false;
    rescued->SetReactState(REACT_PASSIVE);
    rescued->SetImmuneToPC(true);
    rescued->SetImmuneToNPC(true);
    ScheduleWildCoastEscape(rescued);
    player->KilledMonsterCredit(credit);
    ObjectGuid const playerGuid = player->GetGUID();
    rescued->m_Events.AddEventAtOffset([rescued, playerGuid, conversationId, actorId, entry]()
    {
        if (Player* owner = ObjectAccessor::GetPlayer(*rescued, playerGuid))
            CoastConversation(owner, conversationId, {{0, actorId, entry}}, rescued);
    }, dialogueDelay);
    return true;
}
}

// 189055 - Archivist Rellid
// Sniff 04:40:07 CMSG_SPELL_CLICK -> 383057 -> credit 194138 for 70122
struct npc_archivist_rellid : public ScriptedAI
{
    npc_archivist_rellid(Creature* creature) : ScriptedAI(creature) { }

    void SpellHit(WorldObject* caster, SpellInfo const* spell) override
    {
        Player* player = caster->ToPlayer();
        if (!player || spell->Id != 383057)
            return;
        // Credit follows the completed rescue cast, not the initial spell-click request.
        CoastRescue(player, NPC_CREDIT_RELLID, 189061,
            {3452.954f, -1957.9128f, 24.028893f, 3.2404807f}, 19288, 87307, 3650ms);
    }
};

// 193707 - Surveyor's Disc
// Sniff 04:46:03 CMSG_SPELL_CLICK -> 382063 -> credit 184913 for 66101
struct npc_surveyors_disc : public ScriptedAI
{
    npc_surveyors_disc(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* clicker, bool /*spellClickHandled*/) override
    {
        Player* player = clicker->ToPlayer();
        if (!player)
            return;

        // 382063 summons vehicle 193712. Credit is awarded by PassengerBoarded
        // only after a player has actually entered it.
    }
};

// DB2 69587: 383057 triggers 383056 (personal kill credit) before the target's
// SpellHit callback. Create the rescued actor before that default credit makes
// NeedsCoastCredit false, and award the credit only once.
class spell_wild_coast_rellid_rescue : public SpellScript
{
    void HandleCredit(SpellEffIndex /*effect*/)
    {
        Player* player = GetHitPlayer();
        if (player && player->GetMapId() == 2444
            && CoastRescue(player, NPC_CREDIT_RELLID, 189061,
                {3452.954f, -1957.9128f, 24.028893f, 3.2404807f}, 19288, 87307, 3650ms))
            PreventHitDefaultEffect(EFFECT_0);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_wild_coast_rellid_rescue::HandleCredit, EFFECT_0, SPELL_EFFECT_KILL_CREDIT);
    }
};

// 383054 is the client's Lockeye rescue credit. The target was recorded hanging
// above the cave floor; the rescued copy is private and never replaces it globally.
class spell_wild_coast_lockeye_rescue : public SpellScript
{
    Player* EligiblePlayer() const
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player || !player->IsAlive() || player->GetMapId() != 2444 ||
            !NeedsCoastCredit(player, QUEST_EXPLORERS_IN_PERIL, 194140))
            return nullptr;
        Creature* lockeye = player->FindNearestCreature(189052, 10.0f);
        return lockeye && lockeye->InSamePhase(player) && lockeye->IsWithinLOSInMap(player) ? player : nullptr;
    }

    SpellCastResult CheckRescue() { return EligiblePlayer() ? SPELL_CAST_OK : SPELL_FAILED_BAD_TARGETS; }

    void HandleCredit(SpellEffIndex /*effect*/)
    {
        PreventHitDefaultEffect(EFFECT_0);
        if (Player* player = EligiblePlayer())
        {
            player->KilledMonsterCredit(194140);
            if (Creature* rescued = player->SummonCreature(189063,
                {3492.2656f, -1688.0798f, 12.26f, 4.67748f}, TEMPSUMMON_TIMED_DESPAWN, 20s, 0, 0, player->GetGUID()))
            {
                rescued->SetReactState(REACT_PASSIVE);
                rescued->SetImmuneToPC(true);
                rescued->SetImmuneToNPC(true);
            }
        }
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_wild_coast_lockeye_rescue::CheckRescue);
        OnEffectHitTarget += SpellEffectFn(spell_wild_coast_lockeye_rescue::HandleCredit, EFFECT_0, SPELL_EFFECT_KILL_CREDIT);
    }
};

// Simplified excavation interaction. Six distinct geodes are needed in a visit;
// other players retain access to the same world objects.
struct npc_wild_coast_geode : ScriptedAI
{
    npc_wild_coast_geode(Creature* creature) : ScriptedAI(creature) { }
    std::unordered_set<ObjectGuid> _credited;

    bool CanExcavate(Player* player)
    {
        if (!player->IsAlive() || player->IsInCombat() || !me->InSamePhase(player) ||
            !me->IsWithinDistInMap(player, INTERACTION_DISTANCE) ||
            !NeedsCoastCredit(player, 69965, 193672))
            return false;
        if (!player->GetQuestObjectiveData(69965, 429578))
            _credited.erase(player->GetGUID()); // A new attempt after abandoning the quest.
        return !_credited.contains(player->GetGUID());
    }

    bool OnGossipHello(Player* player) override
    {
        ClearGossipMenuFor(player);
        if (CanExcavate(player))
            AddGossipItemFor(player, GossipOptionNpc::None, "Test Haephesta's tools on this geode.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
    {
        uint32 action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        CloseGossipMenuFor(player);
        if (action == GOSSIP_ACTION_INFO_DEF + 1 && CanExcavate(player))
        {
            ObjectGuid guid = player->GetGUID();
            _credited.insert(guid);
            player->KilledMonsterCredit(193672, me->GetGUID());
            me->m_Events.AddEventAtOffset([this, guid]() { _credited.erase(guid); }, 10min);
        }
        return true;
    }
};

// Spawn-specific AI for creatures observed aloft, without changing other uses of
// their template. Normal combat/evade behavior remains ScriptedAI's default.
struct npc_wild_coast_airborne : ScriptedAI
{
    npc_wild_coast_airborne(Creature* creature) : ScriptedAI(creature) { }
    void Reset() override
    {
        me->SetCanFly(true);
        me->SetDisableGravity(true);
    }
};

// 379137 - Protodragon Rib Cage
// Sniff 04:38:20 GO state change then credit 194139 for 70122
struct go_protodragon_rib_cage : public GameObjectAI
{
    go_protodragon_rib_cage(GameObject* go) : GameObjectAI(go) { }

    bool OnGossipHello(Player* player) override
    {
        if (NeedsCoastCredit(player, QUEST_EXPLORERS_IN_PERIL, NPC_CREDIT_RIB_CAGE))
            player->CastSpell(me, 250484, false);
        return true;
    }
};

class spell_wild_coast_rib_rescue : public SpellScript
{
    void HandleRescue()
    {
        Player* player = GetCaster()->ToPlayer();
        GameObject* cage = GetHitGObj();
        if (player && cage && cage->GetEntry() == 379137 && player->GetMapId() == 2444)
            CoastRescue(player, NPC_CREDIT_RIB_CAGE, 189062,
                {3587.4001f, -2014.2587f, 11.31592f, 2.1847396f}, 19289, 87308, 1285ms);
    }

    void Register() override { AfterHit += SpellHitFn(spell_wild_coast_rib_rescue::HandleRescue); }
};

// 193712 - personal survey vehicle. Buttons are player casts, not timed auto-completion.
struct npc_wild_coast_survey_vehicle : public ScriptedAI
{
    npc_wild_coast_survey_vehicle(Creature* creature) : ScriptedAI(creature) { }

    ObjectGuid _rider;
    TaskScheduler _scheduler;
    bool _busy = false;
    bool _aborting = false;
    static constexpr Position ReturnPosition = {3586.95f, -1402.02f, 103.489f, 0.0f};

    void IsSummonedBy(WorldObject* summoner) override
    {
        Player* player = summoner->ToPlayer();
        if (!player || player->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS) != QUEST_STATUS_INCOMPLETE)
        {
            me->DespawnOrUnsummon(1s);
            return;
        }
        me->SetPrivateObjectOwner(player->GetGUID());
        me->SetReactState(REACT_PASSIVE);
        me->SetDisableGravity(true);
        ObjectGuid const ownerGuid = player->GetGUID();
        // SummonProperties 4926 is ALLY/None, so the core does not auto-board.
        // The captured 382193 supplies both the ride aura and action bar 2191.
        _scheduler.Schedule(100ms, [this, ownerGuid](TaskContext)
        {
            Player* owner = ObjectAccessor::GetPlayer(*me, ownerGuid);
            if (!owner || owner->GetVehicleBase() || !me->GetVehicleKit()
                || owner->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS) != QUEST_STATUS_INCOMPLETE)
            {
                me->DespawnOrUnsummon(1s);
                return;
            }
            owner->CastSpell(me, 382193, true);
            _scheduler.Schedule(2s, [this](TaskContext)
            {
                if (_rider.IsEmpty())
                    me->DespawnOrUnsummon();
            });
        });
    }

    void PassengerBoarded(Unit* passenger, int8 /*seatId*/, bool apply) override
    {
        Player* player = passenger->ToPlayer();
        if (!player)
            return;
        if (!apply)
        {
            if (_rider != player->GetGUID())
                return;
            _scheduler.CancelAll();
            _rider.Clear();
            _busy = false;
            me->DespawnOrUnsummon(1s);
            return;
        }
        if (player->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS) != QUEST_STATUS_INCOMPLETE)
            return;
        _rider = player->GetGUID();
        me->SetPrivateObjectOwner(_rider);
        me->SetReactState(REACT_PASSIVE);
        me->SetDisableGravity(true);
        if (NeedsCoastCredit(player, QUEST_FROM_SUCH_GREAT_HEIGHTS, NPC_CREDIT_SURVEYOR))
            player->KilledMonsterCredit(NPC_CREDIT_SURVEYOR);
    }

    Player* Rider() const
    {
        Player* player = ObjectAccessor::GetPlayer(*me, _rider);
        return player && player->GetVehicleBase() == me ? player : nullptr;
    }

    void DoAction(int32 action) override
    {
        Player* player = Rider();
        if (!player || _busy)
            return;
        Position top;
        Milliseconds upTime, surveyTime, returnTime;
        uint32 credit, conversation;
        switch (action)
        {
            case 382188: // 04:46:13 -> 04:46:29, search for power
                top = {3578.46f, -1442.26f, 156.455f, 0.0f};
                upTime = 1501ms; surveyTime = 16662ms; returnTime = 4001ms;
                credit = 184905; conversation = 19120;
                break;
            case 382190: // 04:46:40 -> 04:46:59, search for allies
                top = {3591.87f, -1384.59f, 203.671f, 0.0f};
                upTime = 2037ms; surveyTime = 19490ms; returnTime = 4001ms;
                credit = 184903; conversation = 19121;
                break;
            case 382192: // 04:47:04 -> 04:47:21, search for danger
                top = {3599.56f, -1397.88f, 518.316f, 0.0f};
                upTime = 2001ms; surveyTime = 17122ms; returnTime = 6797ms;
                credit = 184904; conversation = 19122;
                break;
            default:
                return;
        }
        if (!NeedsCoastCredit(player, QUEST_FROM_SUCH_GREAT_HEIGHTS, credit))
            return;
        _busy = true;
        me->GetMotionMaster()->MoveJump(1, top, upTime);
        _scheduler.Schedule(surveyTime, [this, credit, conversation, returnTime](TaskContext)
        {
            Player* owner = Rider();
            if (!owner || !NeedsCoastCredit(owner, QUEST_FROM_SUCH_GREAT_HEIGHTS, credit))
            {
                _busy = false;
                return;
            }
            owner->KilledMonsterCredit(credit);
            CoastConversation(owner, conversation, {});
            me->GetMotionMaster()->MoveJump(2, ReturnPosition, returnTime, 10.0f);
            _scheduler.Schedule(returnTime, [this](TaskContext)
            {
                _busy = false;
                if (Player* rider = Rider())
                    if (rider->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS) == QUEST_STATUS_COMPLETE)
                        rider->ExitVehicle();
            });
        });
    }

    void UpdateAI(uint32 diff) override
    {
        if (!_rider.IsEmpty() && !_aborting)
        {
            Player* player = Rider();
            if (!player)
            {
                _scheduler.CancelAll();
                _rider.Clear();
                me->DespawnOrUnsummon();
                return;
            }
            QuestStatus const status = player->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS);
            if (status != QUEST_STATUS_INCOMPLETE && status != QUEST_STATUS_COMPLETE)
            {
                // Abandoning the quest aloft must not leave the player stranded or grant pending credit.
                _aborting = true;
                _scheduler.CancelAll();
                me->GetMotionMaster()->MoveJump(2, ReturnPosition, 4s);
                _scheduler.Schedule(4s, [this](TaskContext)
                {
                    if (Player* owner = Rider())
                        owner->ExitVehicle();
                    me->DespawnOrUnsummon(1s);
                });
            }
        }
        _scheduler.Update(diff);
    }
};

class spell_wild_coast_survey : public SpellScript
{
    void HandleSurvey()
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player || player->GetMapId() != 2444)
            return;
        if (Creature* vehicle = player->GetVehicleCreatureBase())
            if (vehicle->GetEntry() == 193712)
                vehicle->AI()->DoAction(GetSpellInfo()->Id);
    }
    void Register() override { AfterCast += SpellCastFn(spell_wild_coast_survey::HandleSurvey); }
};

// Quest dialogue triggers from the capture. All conversations are private to the player.
struct npc_wild_coast_questgiver : public ScriptedAI
{
    npc_wild_coast_questgiver(Creature* creature) : ScriptedAI(creature) { }

    std::unordered_set<ObjectGuid> _greeted;

    bool OnGossipHello(Player* player) override
    {
        if (me->GetEntry() == 238913 && player->GetPrimarySpecialization() != ChrSpecialization::None &&
            NeedsCoastCredit(player, 87547, 163033))
            player->KilledMonsterCredit(163033);
        bool inquiry = me->GetEntry() == 193362 &&
            (NeedsCoastCredit(player, 70125, 193817) || NeedsCoastCredit(player, 69910, 193817));
        bool embassy = me->GetEntry() == 193393 && NeedsCoastCredit(player, 69911, 193866);
        if (!inquiry && !embassy)
            return false;
        ClearGossipMenuFor(player);
        player->PrepareQuestMenu(me->GetGUID());
        AddGossipItemFor(player, GossipOptionNpc::None,
            inquiry ? "When are the dragons expected to arrive?" : "Tell me about the embassy.",
            GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 20);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
    {
        if (player->PlayerTalkClass->GetGossipOptionAction(gossipListId) != GOSSIP_ACTION_INFO_DEF + 20)
            return false;
        CloseGossipMenuFor(player);
        if (!player->IsAlive() || !me->InSamePhase(player) || !me->IsWithinDistInMap(player, INTERACTION_DISTANCE))
            return true;
        if (me->GetEntry() == 193362 &&
            (NeedsCoastCredit(player, 70125, 193817) || NeedsCoastCredit(player, 69910, 193817)))
            player->KilledMonsterCredit(193817);
        if (me->GetEntry() == 193393 && NeedsCoastCredit(player, 69911, 193866))
            player->KilledMonsterCredit(193866);
        return true;
    }

    void MoveInLineOfSight(Unit* who) override
    {
        Player* player = who->ToPlayer();
        if (!player || !me->IsWithinDistInMap(player, 20.0f) || !me->IsWithinLOSInMap(player) || _greeted.contains(player->GetGUID()))
            return;
        uint32 conversation = 0;
        if (me->GetEntry() == 184449 && player->GetQuestRewardStatus(70123) && player->GetQuestStatus(67053) == QUEST_STATUS_NONE)
            conversation = 19299;
        else if (me->GetEntry() == 184452 && player->GetQuestStatus(67053) == QUEST_STATUS_INCOMPLETE)
            conversation = 19300;
        else if (me->GetEntry() == 192438 && player->GetQuestRewardStatus(66101) && player->GetQuestStatus(69965) == QUEST_STATUS_NONE)
            conversation = 19142;
        if (!conversation)
            return;
        ObjectGuid guid = player->GetGUID();
        _greeted.insert(guid);
        me->m_Events.AddEventAtOffset([this, guid]() { _greeted.erase(guid); }, 2min);
        if (conversation == 19299)
            CoastConversation(player, conversation, {{0, 85910, 184449}});
        else if (conversation == 19300)
            CoastConversation(player, conversation, {{0, 85908, 184452}, {1, 85907, 184451}});
        else
            CoastConversation(player, conversation, {{0, 87052, 192438}});
    }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        switch (quest->GetQuestId())
        {
            case 87547:
                if (me->GetEntry() == 238913 && player->GetPrimarySpecialization() != ChrSpecialization::None)
                    player->KilledMonsterCredit(163033);
                break;
            case 87562:
                if (me->GetEntry() == 238913)
                    Talk(0, player);
                break;
            case 70124:
                if (me->GetEntry() == 189021)
                {
                    // Toddy's personal conversation actor is a different entry from the questgiver.
                    if (Creature* toddy = player->SummonCreature(187251, {3676.77f, -1898.5764f, 7.736508f, 0.3710566f},
                        TEMPSUMMON_TIMED_DESPAWN, 30s, 0, 0, player->GetGUID()))
                    {
                        toddy->SetReactState(REACT_PASSIVE);
                        CoastConversation(player, 19294, {{2, 85133, 187251}}, toddy);
                    }
                }
                break;
            case 67053:
                if (me->GetEntry() == 184449)
                    CoastConversation(player, 19298, {{0, 85909, 184450}, {1, 85910, 184449}});
                break;
            case 66101:
                if (me->GetEntry() == 187257)
                    CoastConversation(player, 19123, {{0, 87087, 187257}});
                break;
            case 70135:
                if (me->GetEntry() == 184452)
                    CoastConversation(player, 19302, {{0, 85907, 184451}, {1, 85908, 184452}});
                break;
            case 69965:
                if (me->GetEntry() == 192438)
                    CoastConversation(player, 19087, {{0, 87052, 192438}});
                break;
            case 66112:
                if (me->GetEntry() == 187261)
                    CoastConversation(player, 18932, {{0, 86641, 187261}});
                break;
            default:
                break;
        }
    }

    void OnQuestReward(Player* player, Quest const* quest, LootItemType /*type*/, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == 66101 && me->GetEntry() == 187257)
            CoastConversation(player, 19124, {{0, 87087, 187257}});
    }
};

// Basic individual interactions for the three embassy objects. The visitor log
// has three explicit steps; opening it alone never completes the objective.
struct go_wild_coast_embassy : GameObjectAI
{
    go_wild_coast_embassy(GameObject* go) : GameObjectAI(go) { }

    uint32 Credit() const
    {
        switch (me->GetEntry())
        {
            case 378435: return 193870;
            case 378437: return 193872;
            case 378438: return 193871;
            default: return 0;
        }
    }

    bool Eligible(Player* player) const
    {
        return player->IsAlive() && me->InSamePhase(player) &&
            me->IsWithinDistInMap(player, INTERACTION_DISTANCE) && NeedsCoastCredit(player, 69911, Credit());
    }

    void ShowStep(Player* player, uint32 step)
    {
        ClearGossipMenuFor(player);
        player->PlayerTalkClass->GetGossipMenu().SetMenuId(11901200 + step);
        char const* text = me->GetEntry() == 378437 ? "Read the welcome message." : "Relight the Brazier of Kinship.";
        if (me->GetEntry() == 378435)
        {
            char const* steps[] = { "Sign with your name.", "Enter today's date.", "Record your visit with the expedition." };
            text = steps[step];
        }
        AddGossipItemFor(player, GossipOptionNpc::None, text, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 30 + step);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
    }

    bool OnGossipHello(Player* player) override
    {
        if (Eligible(player))
            ShowStep(player, 0);
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
    {
        uint32 action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        if (menuId < 11901200 || menuId > 11901202 ||
            action != GOSSIP_ACTION_INFO_DEF + 30 + menuId - 11901200 || !Eligible(player))
        {
            CloseGossipMenuFor(player);
            return true;
        }
        uint32 step = menuId - 11901200;
        if (me->GetEntry() == 378435 && step < 2)
            ShowStep(player, step + 1);
        else
        {
            CloseGossipMenuFor(player);
            player->KilledMonsterCredit(Credit());
        }
        return true;
    }
};

// Observe a successful mount aura, rather than granting credit merely because
// a cast was attempted. This hook only concerns the active coastal tutorial.
class player_wild_coast_tutorial : public PlayerScript
{
public:
    player_wild_coast_tutorial() : PlayerScript("player_wild_coast_tutorial") { }

    void OnSpellCast(Player* player, Spell* spell, bool /*skipCheck*/) override
    {
        uint32 spellId = spell->GetSpellInfo()->Id;
        if (player->GetMapId() != 2444 || !NeedsCoastCredit(player, 87555, 239009) ||
            !sDB2Manager.GetMount(spellId) || !spell->GetSpellInfo()->HasAura(SPELL_AURA_MOUNTED))
            return;
        player->m_Events.AddEventAtOffset([player, spellId]()
        {
            if (player->GetMapId() == 2444 && player->IsAlive() && player->IsMounted() &&
                player->HasAura(spellId) && NeedsCoastCredit(player, 87555, 239009))
                player->KilledMonsterCredit(239009);
        }, Milliseconds(std::max<int32>(spell->GetCastTime(), 0)) + 200ms);
    }
};

class spell_wild_coast_homebind : public SpellScript
{
    void AfterBinding()
    {
        Creature* innkeeper = GetCaster()->ToCreature();
        Player* player = GetHitPlayer();
        if (innkeeper && innkeeper->GetEntry() == 187412 && player && player->GetMapId() == 2444 &&
            player->m_homebind.GetMapId() == 2444 && NeedsCoastCredit(player, 87555, 163160))
            player->KilledMonsterCredit(163160);
    }
    void Register() override { AfterHit += SpellHitFn(spell_wild_coast_homebind::AfterBinding); }
};

// 213624 - Magni Bronzebeard
// Sniff 05:11:26 gossip 33853/120882 -> scene 3400 pkg 4235, spell 444955, credit 218347
struct npc_magni_azeroths_voice : public ScriptedAI
{
    npc_magni_azeroths_voice(Creature* creature) : ScriptedAI(creature) { }

    bool OnGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
    {
        if (menuId != GOSSIP_MENU_MAGNI_BEGIN || gossipListId != GOSSIP_OPTION_MAGNI_BEGIN)
            return false;

        if (player->GetQuestStatus(QUEST_AZEROTHS_VOICE) != QUEST_STATUS_INCOMPLETE)
            return false;

        CloseGossipMenuFor(player);
        player->GetSceneMgr().PlayScene(SCENE_AZEROTHS_VOICE);
        player->CastSpell(player, SPELL_AZEROTHS_VOICE, true);
        player->KilledMonsterCredit(NPC_CREDIT_MAGNI);
        return true;
    }
};

// 214669 - Brann Bronzebeard
// Sniff 05:17:01 gossip 34132/121542 -> credit 220367 for 80500
struct npc_brann_bronzebeard_family : public ScriptedAI
{
    npc_brann_bronzebeard_family(Creature* creature) : ScriptedAI(creature) { }

    bool OnGossipSelect(Player* player, uint32 menuId, uint32 gossipListId) override
    {
        if (menuId != GOSSIP_MENU_BRANN_PORTRAIT || gossipListId != GOSSIP_OPTION_BRANN_PORTRAIT)
            return false;

        if (player->GetQuestStatus(QUEST_BRONZEBEARD_FAMILY) != QUEST_STATUS_INCOMPLETE)
            return false;

        CloseGossipMenuFor(player);
        player->KilledMonsterCredit(NPC_CREDIT_BRANN);
        return true;
    }
};

void AddSC_zone_the_waking_shores()
{
    RegisterCreatureAI(npc_wild_coast_questgiver);
    RegisterCreatureAI(npc_wild_coast_survey_vehicle);
    RegisterSpellScript(spell_wild_coast_survey);
    RegisterSpellScript(spell_wild_coast_rib_rescue);
    RegisterSpellScript(spell_wild_coast_rellid_rescue);
    RegisterSpellScript(spell_wild_coast_lockeye_rescue);
    RegisterCreatureAI(npc_wild_coast_geode);
    RegisterCreatureAI(npc_wild_coast_airborne);
    RegisterGameObjectAI(go_wild_coast_embassy);
    RegisterSpellScript(spell_wild_coast_homebind);
    new player_wild_coast_tutorial();
    RegisterCreatureAI(npc_archivist_rellid);
    RegisterCreatureAI(npc_surveyors_disc);
    RegisterGameObjectAI(go_protodragon_rib_cage);
    RegisterCreatureAI(npc_magni_azeroths_voice);
    RegisterCreatureAI(npc_brann_bronzebeard_family);
}
