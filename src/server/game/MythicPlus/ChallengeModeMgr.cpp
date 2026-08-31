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

#include "ChallengeModeMgr.h"
#include "Common.h"
#include "DatabaseEnv.h"
#include "DB2Stores.h"
#include "GameTime.h"
#include "InstanceScript.h"
#include "Item.h"
#include "ItemTemplate.h"
#include "Log.h"
#include "Map.h"
#include "MiscPackets.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "SeasonalContentMgr.h"
#include "WorldSession.h"

namespace
{
uint32 const DefaultKeystoneItemId = 138019;
uint32 const DeathPenaltyMS = 5 * IN_MILLISECONDS;
}

ChallengeModeMgr* ChallengeModeMgr::instance()
{
    static ChallengeModeMgr instance;
    return &instance;
}

uint32 ChallengeModeMgr::GetKeystoneItemId()
{
    return DefaultKeystoneItemId;
}

MapChallengeModeEntry const* ChallengeModeMgr::FindChallengeForMap(uint32 mapId)
{
    for (MapChallengeModeEntry const* entry : sMapChallengeModeStore)
        if (entry && entry->MapID == mapId)
            return entry;
    return nullptr;
}

Item* ChallengeModeMgr::FindKeystone(Player* player)
{
    if (!player)
        return nullptr;

    Item* found = nullptr;
    player->ForEachItem(ItemSearchLocation::Inventory, [&found](Item* item)
    {
        ItemTemplate const* proto = item ? item->GetTemplate() : nullptr;
        if (!proto || proto->GetClass() != ITEM_CLASS_REAGENT || proto->GetSubClass() != ITEM_SUBCLASS_KEYSTONE)
            return ItemSearchCallbackResult::Continue;

        found = item;
        return ItemSearchCallbackResult::Stop;
    });
    return found;
}

void ChallengeModeMgr::GiveKeystone(Player* player, int32 challengeModeId, int32 level)
{
    if (!player)
        return;

    uint32 itemId = GetKeystoneItemId();
    if (!sObjectMgr->GetItemTemplate(itemId))
        return;

    ItemPosCountVec dest;
    if (player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK)
    {
        player->SendItemRetrievalMail(itemId, 1, ItemContext::NONE);
        return;
    }

    if (Item* key = player->StoreNewItem(dest, itemId, true))
    {
        key->SetModifier(ITEM_MODIFIER_CHALLENGE_MAP_CHALLENGE_MODE_ID, uint32(std::max(challengeModeId, 0)));
        key->SetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_LEVEL, uint32(std::max(level, 2)));
        std::vector<int32> affixes = sSeasonalContentMgr->GetCurrentAffixes();
        for (size_t i = 0; i < 4 && i < affixes.size(); ++i)
            key->SetModifier(ItemModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_AFFIX_ID_1 + i), uint32(affixes[i]));
        key->SetState(ITEM_CHANGED, player);
    }
}

void ChallengeModeMgr::ApplyPlayerChallengeFields(Player* player, ChallengeModeRun const& run) const
{
    UF::ChallengeModeData data;
    data.MapID = int32(run.MapId);
    data.InstanceID = run.InstanceId;
    data.StartTime = run.StartTime;
    data.KeystoneOwnerGUID = run.KeystoneOwner;
    data.IsActive = 1;
    data.InitialPlayerCount = player->GetMap() ? int32(player->GetMap()->GetPlayersCountExceptGMs()) : 1;
    player->SetChallengeModeState(data);
}

ChallengeModeRun* ChallengeModeMgr::GetRunForPlayer(Player* player)
{
    if (!player || !player->GetMap() || !player->GetMap()->IsDungeon())
        return nullptr;

    auto itr = _runsByInstance.find(player->GetMap()->GetInstanceId());
    if (itr == _runsByInstance.end())
        return nullptr;
    return &itr->second;
}

ChallengeModeRun const* ChallengeModeMgr::GetRun(InstanceMap const* map) const
{
    if (!map)
        return nullptr;
    auto itr = _runsByInstance.find(map->GetInstanceId());
    return itr != _runsByInstance.end() ? &itr->second : nullptr;
}

void ChallengeModeMgr::BroadcastStart(InstanceMap* map, ChallengeModeRun const& run)
{
    WorldPackets::Misc::ChallengeModeStart packet;
    packet.MapID = int32(run.MapId);
    packet.ChallengeModeID = run.ChallengeModeID;
    packet.KeystoneLevel = run.KeystoneLevel;
    packet.Affixes = run.Affixes;
    packet.DeathCount = run.DeathCount;
    packet.TimeLimitMS = run.TimeLimitMS;

    for (MapReference const& ref : map->GetPlayers())
    {
        if (Player* member = ref.GetSource())
        {
            ApplyPlayerChallengeFields(member, run);
            member->SendDirectMessage(packet.Write());
        }
    }
}

void ChallengeModeMgr::Start(Player* player, ObjectGuid const& itemGuid)
{
    if (!player)
        return;

    InstanceMap* map = player->GetMap() ? player->GetMap()->ToInstanceMap() : nullptr;
    if (!map || !map->IsDungeon() || map->IsRaid())
        return;

    if (auto const itr = _runsByInstance.find(map->GetInstanceId()); itr != _runsByInstance.end() && !itr->second.Completed)
        return;

    Item* keystone = !itemGuid.IsEmpty() ? player->GetItemByGuid(itemGuid) : FindKeystone(player);
    if (!keystone)
        keystone = FindKeystone(player);
    if (!keystone)
        return;

    ItemTemplate const* proto = keystone->GetTemplate();
    if (!proto || proto->GetClass() != ITEM_CLASS_REAGENT || proto->GetSubClass() != ITEM_SUBCLASS_KEYSTONE)
        return;

    int32 challengeModeId = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_MAP_CHALLENGE_MODE_ID));
    MapChallengeModeEntry const* challenge = challengeModeId ? sMapChallengeModeStore.LookupEntry(uint32(challengeModeId)) : FindChallengeForMap(map->GetId());
    if (!challenge)
        challenge = FindChallengeForMap(map->GetId());
    if (!challenge || challenge->MapID != map->GetId())
        return;

    int32 level = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_LEVEL));
    if (level < 2)
        level = 2;

    ChallengeModeRun run;
    run.InstanceId = map->GetInstanceId();
    run.MapId = map->GetId();
    run.ChallengeModeID = int32(challenge->ID);
    run.KeystoneLevel = level;
    run.Affixes[0] = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_AFFIX_ID_1));
    run.Affixes[1] = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_AFFIX_ID_2));
    run.Affixes[2] = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_AFFIX_ID_3));
    run.Affixes[3] = int32(keystone->GetModifier(ITEM_MODIFIER_CHALLENGE_KEYSTONE_AFFIX_ID_4));
    if (!run.Affixes[0])
    {
        std::vector<int32> current = sSeasonalContentMgr->GetCurrentAffixes();
        for (size_t i = 0; i < 4 && i < current.size(); ++i)
            run.Affixes[i] = current[i];
    }

    int16 criteria = 0;
    for (int16 count : challenge->CriteriaCount)
        if (count > criteria)
            criteria = count;
    run.TimeLimitMS = criteria >= 60 ? uint32(criteria) * IN_MILLISECONDS : 30 * MINUTE * IN_MILLISECONDS;
    run.StartTime = GameTime::GetGameTime();
    run.KeystoneOwner = player->GetGUID();

    player->DestroyItem(keystone->GetBagSlot(), keystone->GetSlot(), true);

    _runsByInstance[run.InstanceId] = run;
    BroadcastStart(map, run);
    TC_LOG_INFO("misc", "Challenge mode {} +{} started by {} in instance {}", run.ChallengeModeID, run.KeystoneLevel, player->GetName(), run.InstanceId);
}

void ChallengeModeMgr::Reset(Player* player)
{
    ChallengeModeRun* run = GetRunForPlayer(player);
    if (!run || run->Completed || !player->GetMap())
        return;

    InstanceMap* map = player->GetMap()->ToInstanceMap();
    if (!map)
        return;
    WorldPackets::Misc::ChallengeModeReset reset;
    reset.MapID = int32(run->MapId);
    for (MapReference const& ref : map->GetPlayers())
        if (Player* member = ref.GetSource())
        {
            member->ClearChallengeModeState();
            member->SendDirectMessage(reset.Write());
        }

    _runsByInstance.erase(run->InstanceId);
}

void ChallengeModeMgr::OnPlayerDeath(Player* player)
{
    ChallengeModeRun* run = GetRunForPlayer(player);
    if (!run || run->Completed)
        return;

    ++run->DeathCount;
    WorldPackets::Misc::ChallengeModeUpdateDeathCount packet;
    packet.DeathCount = run->DeathCount;
    if (InstanceMap* map = player->GetMap()->ToInstanceMap())
        for (MapReference const& ref : map->GetPlayers())
            if (Player* member = ref.GetSource())
                member->SendDirectMessage(packet.Write());
}

void ChallengeModeMgr::OnEncounterComplete(Player* player, InstanceMap* map, DungeonEncounterEntry const* /*encounter*/)
{
    if (!player || !map)
        return;

    auto itr = _runsByInstance.find(map->GetInstanceId());
    if (itr == _runsByInstance.end() || itr->second.Completed)
        return;

    InstanceScript* script = map->GetInstanceScript();
    if (!script || !script->GetEncounterCount())
        return;

    for (uint32 i = 0; i < script->GetEncounterCount(); ++i)
        if (script->GetBossState(i) != DONE)
            return;

    Complete(map, itr->second);
}

void ChallengeModeMgr::Complete(InstanceMap* map, ChallengeModeRun& run)
{
    run.Completed = true;
    uint32 durationMs = uint32(std::max<int64>(0, GameTime::GetGameTime() - run.StartTime)) * IN_MILLISECONDS;
    durationMs += run.DeathCount * DeathPenaltyMS;
    bool timed = durationMs <= run.TimeLimitMS;
    int32 nextLevel = timed ? run.KeystoneLevel + 1 : std::max(2, run.KeystoneLevel);

    WorldPackets::Misc::ChallengeModeComplete complete;
    complete.ChallengeModeID = run.ChallengeModeID;
    complete.DurationMS = int32(durationMs);
    complete.KeystoneLevel = run.KeystoneLevel;
    complete.Timed = timed;

    for (MapReference const& ref : map->GetPlayers())
    {
        Player* member = ref.GetSource();
        if (!member)
            continue;

        SaveBestRun(member, run, durationMs, timed);
        GiveKeystone(member, run.ChallengeModeID, nextLevel);
        member->ClearChallengeModeState();
        member->SendDirectMessage(complete.Write());
        sSeasonalContentMgr->RecordMythicPlusCompletion(member, run.ChallengeModeID, run.KeystoneLevel, timed);
    }
}

void ChallengeModeMgr::SaveBestRun(Player* player, ChallengeModeRun const& run, uint32 durationMs, bool timed) const
{
    float score = float(run.KeystoneLevel * 10 + (timed ? 15 : 0));
    CharacterDatabase.PExecute(
        "INSERT INTO character_mythic_plus (guid, challengeModeId, level, durationMs, deaths, completionDate, score, affix1, affix2, affix3, affix4) "
        "VALUES ({}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}) "
        "ON DUPLICATE KEY UPDATE "
        "level = GREATEST(level, VALUES(level)), "
        "score = GREATEST(score, VALUES(score)), "
        "durationMs = IF(VALUES(score) >= score, VALUES(durationMs), durationMs), "
        "completionDate = VALUES(completionDate)",
        player->GetGUID().GetCounter(), uint32(run.ChallengeModeID), uint32(run.KeystoneLevel),
        durationMs, run.DeathCount, uint64(GameTime::GetGameTime()), score,
        uint32(run.Affixes[0]), uint32(run.Affixes[1]), uint32(run.Affixes[2]), uint32(run.Affixes[3]));

    CharacterDatabase.PExecute(
        "INSERT INTO character_mythic_plus_weekly (guid, challengeModeId, level, timed, completionDate, resetTime) "
        "VALUES ({}, {}, {}, {}, {}, {})",
        player->GetGUID().GetCounter(), uint32(run.ChallengeModeID), uint32(run.KeystoneLevel),
        timed ? 1 : 0, uint64(GameTime::GetGameTime()), uint64(sSeasonalContentMgr->GetNextWeeklyReset()));
}
