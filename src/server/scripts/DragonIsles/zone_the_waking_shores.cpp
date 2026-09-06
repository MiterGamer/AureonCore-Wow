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
#include "Player.h"
#include "QuestDef.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

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

// 189055 - Archivist Rellid
// Sniff 04:40:07 CMSG_SPELL_CLICK -> 383057 -> credit 194138 for 70122
struct npc_archivist_rellid : public ScriptedAI
{
    npc_archivist_rellid(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* clicker, bool /*spellClickHandled*/) override
    {
        Player* player = clicker->ToPlayer();
        if (!player)
            return;

        if (player->GetQuestStatus(QUEST_EXPLORERS_IN_PERIL) == QUEST_STATUS_INCOMPLETE)
            player->KilledMonsterCredit(NPC_CREDIT_RELLID);
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

        if (player->GetQuestStatus(QUEST_FROM_SUCH_GREAT_HEIGHTS) == QUEST_STATUS_INCOMPLETE)
            player->KilledMonsterCredit(NPC_CREDIT_SURVEYOR);
    }
};

// 379137 - Protodragon Rib Cage
// Sniff 04:38:20 GO state change then credit 194139 for 70122
struct go_protodragon_rib_cage : public GameObjectAI
{
    go_protodragon_rib_cage(GameObject* go) : GameObjectAI(go) { }

    bool OnGossipHello(Player* player) override
    {
        if (player->GetQuestStatus(QUEST_EXPLORERS_IN_PERIL) == QUEST_STATUS_INCOMPLETE)
            player->KilledMonsterCredit(NPC_CREDIT_RIB_CAGE);
        return true;
    }
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
    RegisterCreatureAI(npc_archivist_rellid);
    RegisterCreatureAI(npc_surveyors_disc);
    RegisterGameObjectAI(go_protodragon_rib_cage);
    RegisterCreatureAI(npc_magni_azeroths_voice);
    RegisterCreatureAI(npc_brann_bronzebeard_family);
}
