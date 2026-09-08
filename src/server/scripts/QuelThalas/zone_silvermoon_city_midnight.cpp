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

#include "Player.h"
#include "ObjectMgr.h"
#include "QuestDef.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "SpellAuraEffects.h"
#include "SpellScript.h"

namespace Scripts::QuelThalas::SilvermoonCityMidnight
{
namespace Quests
{
    static constexpr uint32 CompleteMidnightCampaign = 90806;
}

// Basic quest interaction at the three recorded quest POIs. The retail escape
// animation is not reconstructed. Progress belongs to the interacting player;
// never despawn the shared actor or grant credit to nearby group members.
struct npc_silvermoon_tiff : ScriptedAI
{
    npc_silvermoon_tiff(Creature* creature) : ScriptedAI(creature) { }

    bool CanCapture(Player* player) const
    {
        constexpr uint32 entries[] = { 257255, 257262, 257264 };
        constexpr uint32 objectives[] = { 468055, 468056, 468057 };
        if (!player->IsAlive() || player->IsInCombat() ||
            player->GetQuestStatus(94012) != QUEST_STATUS_INCOMPLETE ||
            !me->IsWithinDistInMap(player, INTERACTION_DISTANCE) || !me->InSamePhase(player))
            return false;
        for (uint32 i = 0; i < 3; ++i)
            if (me->GetEntry() == entries[i])
                return !player->GetQuestObjectiveData(94012, objectives[i]) &&
                    (!i || player->GetQuestObjectiveData(94012, objectives[i - 1]));
        return false;
    }

    bool OnGossipHello(Player* player) override
    {
        ClearGossipMenuFor(player);
        if (CanCapture(player))
            AddGossipItemFor(player, GossipOptionNpc::None, "Catch Tiff.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
    {
        uint32 action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        CloseGossipMenuFor(player);
        if (action == GOSSIP_ACTION_INFO_DEF + 1 && CanCapture(player))
            player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
        return true;
    }
};

// 1278767 - [DNT] Skip Midnight Intro - Flag Campaign
class spell_silvermoon_skip_midnight_intro : public SpellScript
{
    void HandleHitTarget(SpellEffIndex /*effIndex*/)
    {
        // HACK: This should be rewarded after completing the Intro which is nyi atm.
        if (Player* player = GetCaster()->ToPlayer())
            player->CompleteQuest(Quests::CompleteMidnightCampaign);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_silvermoon_skip_midnight_intro::HandleHitTarget, EFFECT_0, SPELL_EFFECT_COMPLETE_CAMPAIGN);
    }
};
}

void AddSC_silvermoon_city_midnight()
{
    using namespace Scripts::QuelThalas::SilvermoonCityMidnight;

    // Spells
    RegisterSpellScript(spell_silvermoon_skip_midnight_intro);
    RegisterCreatureAI(npc_silvermoon_tiff);
}
