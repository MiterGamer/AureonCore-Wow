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

#include "SeasonalContentMgr.h"
#include "ChallengeModeMgr.h"
#include "Common.h"
#include "DatabaseEnv.h"
#include "DB2Stores.h"
#include "GameEventMgr.h"
#include "GameTime.h"
#include "Garrison.h"
#include "Log.h"
#include "Map.h"
#include "Item.h"
#include "MiscPackets.h"
#include "MythicPlusPacketsCommon.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "World.h"
#include "WorldSession.h"

SeasonalContentMgr* SeasonalContentMgr::instance()
{
    static SeasonalContentMgr instance;
    return &instance;
}

void SeasonalContentMgr::LoadFromDB()
{
    _affixRotation = { };
    _thresholds.clear();

    if (QueryResult result = WorldDatabase.Query("SELECT week_index, slot, affix_id FROM mythic_plus_affix_rotation ORDER BY week_index, slot"))
    {
        uint32 count = 0;
        do
        {
            Field* fields = result->Fetch();
            uint8 week = fields[0].GetUInt8();
            if (week >= _affixRotation.size())
                continue;

            _affixRotation[week].push_back(fields[2].GetInt32());
            ++count;
        } while (result->NextRow());

        TC_LOG_INFO("server.loading", ">> Loaded {} mythic+ affix rotation rows", count);
    }
    else
        TC_LOG_INFO("server.loading", ">> mythic_plus_affix_rotation is empty, affixes will come from KeystoneAffix.db2");

    if (QueryResult result = WorldDatabase.Query("SELECT type, threshold, item_id FROM weekly_reward_threshold ORDER BY type, threshold"))
    {
        do
        {
            Field* fields = result->Fetch();
            WeeklyRewardThreshold threshold;
            threshold.Type = WeeklyRewardType(fields[0].GetInt32());
            threshold.Threshold = fields[1].GetInt32();
            threshold.RewardItemID = fields[2].GetInt32();
            _thresholds.push_back(threshold);
        } while (result->NextRow());
    }

    if (_thresholds.empty())
    {
        _thresholds.push_back({ WeeklyRewardType::Raid, 2, 0 });
        _thresholds.push_back({ WeeklyRewardType::Raid, 4, 0 });
        _thresholds.push_back({ WeeklyRewardType::Raid, 6, 0 });
        _thresholds.push_back({ WeeklyRewardType::Dungeon, 1, 0 });
        _thresholds.push_back({ WeeklyRewardType::Dungeon, 4, 0 });
        _thresholds.push_back({ WeeklyRewardType::Dungeon, 8, 0 });
        _thresholds.push_back({ WeeklyRewardType::RankedPvp, 1250, 0 });
        _thresholds.push_back({ WeeklyRewardType::RankedPvp, 2500, 0 });
        _thresholds.push_back({ WeeklyRewardType::RankedPvp, 6250, 0 });
    }

    _perksItems.clear();
    if (QueryResult perks = WorldDatabase.Query("SELECT vendor_item_id, item_id, price, mount_id, battle_pet_species_id, transmog_set_id, toy_id FROM perks_program_vendor_item"))
    {
        do
        {
            Field* fields = perks->Fetch();
            PerksCatalogItem item;
            item.VendorItemID = fields[0].GetInt32();
            item.ItemID = fields[1].GetInt32();
            item.Price = fields[2].GetInt32();
            item.MountID = fields[3].GetInt32();
            item.BattlePetSpeciesID = fields[4].GetInt32();
            item.TransmogSetID = fields[5].GetInt32();
            item.ToyID = fields[6].GetInt32();
            if (item.ItemID && !sObjectMgr->GetItemTemplate(uint32(item.ItemID)))
                continue;
            _perksItems.push_back(item);
        } while (perks->NextRow());
        TC_LOG_INFO("server.loading", ">> Loaded {} trading post vendor items", uint32(_perksItems.size()));
    }

    RefreshSeason();
}

void SeasonalContentMgr::RefreshSeason()
{
    _seasonID = 0;
    _milestoneSeasonID = 0;
    _mythicPlusActive = false;

    MythicPlusSeasonEntry const* selected = nullptr;
    for (MythicPlusSeasonEntry const* season : sMythicPlusSeasonStore)
    {
        if (!season)
            continue;

        if (season->StartTimeEvent && !IsEventActive(uint16(season->StartTimeEvent)))
            continue;

        if (!selected || season->ID > selected->ID)
            selected = season;
    }

    if (!selected)
    {
        for (MythicPlusSeasonEntry const* season : sMythicPlusSeasonStore)
            if (season && (!selected || season->ID > selected->ID))
                selected = season;
    }

    if (selected)
    {
        _seasonID = int32(selected->ID);
        _milestoneSeasonID = selected->MilestoneSeason;
        _mythicPlusActive = !selected->StartTimeEvent || IsEventActive(uint16(selected->StartTimeEvent));
        if (!selected->StartTimeEvent)
            _mythicPlusActive = true;
    }

    TC_LOG_INFO("server.loading", ">> Mythic+ season {} ({})", _seasonID, _mythicPlusActive ? "active" : "inactive");
}

uint32 SeasonalContentMgr::GetCurrentPeriod() const
{
    uint32 origin = 0;
    for (Cfg_RegionsEntry const* region : sCfgRegionsStore)
    {
        if (region && region->ChallengeOrigin)
        {
            origin = region->ChallengeOrigin;
            break;
        }
    }

    time_t now = GameTime::GetGameTime();
    if (!origin || now < time_t(origin))
        return 1;

    return uint32((now - time_t(origin)) / WEEK) + 1;
}

int32 SeasonalContentMgr::GetCurrentMythicPlusSeasonID() const
{
    return _seasonID;
}

int32 SeasonalContentMgr::GetCurrentMythicPlusMilestoneSeasonID() const
{
    return _milestoneSeasonID;
}

bool SeasonalContentMgr::IsMythicPlusActive() const
{
    return _mythicPlusActive;
}

std::vector<int32> SeasonalContentMgr::GetCurrentAffixes() const
{
    uint32 weekIndex = (GetCurrentPeriod() - 1) % _affixRotation.size();
    if (!_affixRotation[weekIndex].empty())
        return _affixRotation[weekIndex];

    std::vector<int32> affixes;
    for (KeystoneAffixEntry const* affix : sKeystoneAffixStore)
    {
        if (!affix || !affix->ID)
            continue;

        affixes.push_back(int32(affix->ID));
        if (affixes.size() >= 4)
            break;
    }
    return affixes;
}

time_t SeasonalContentMgr::GetNextWeeklyReset() const
{
    return sWorld->GetNextWeeklyQuestsResetTime();
}

ScheduledPvpInfo SeasonalContentMgr::GetScheduledPvpInfo() const
{
    ScheduledPvpInfo info;
    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();

    for (uint16 eventId : sGameEventMgr->GetActiveEventList())
    {
        if (eventId >= events.size())
            continue;

        GameEventData const& event = events[eventId];
        if (event.holiday_id == HOLIDAY_NONE)
            continue;

        bool isBrawl = event.description.find("Brawl") != std::string::npos
            || event.description.find("brawl") != std::string::npos;

        if (!isBrawl)
            continue;

        info.Active = true;
        info.BrawlID = int32(event.holiday_id);
        time_t now = GameTime::GetGameTime();
        if (event.end > now)
            info.TimeRemaining = int32(event.end - now);
        else if (event.length)
            info.TimeRemaining = int32(event.length * MINUTE);
        break;
    }

    return info;
}

void SeasonalContentMgr::ApplyPlayerFields(Player* player) const
{
    WorldPackets::MythicPlus::DungeonScoreData scoreData;
    WorldPackets::MythicPlus::DungeonScoreSummary scoreSummary;
    if (_seasonID)
    {
        WorldPackets::MythicPlus::DungeonScoreSeasonData& season = scoreData.Seasons.emplace_back();
        season.Season = _seasonID;
    }

    QueryResult result = CharacterDatabase.PQuery(
        "SELECT challengeModeId, level, durationMs, score FROM character_mythic_plus WHERE guid = {}",
        player->GetGUID().GetCounter());
    if (!result)
        result = CharacterDatabase.PQuery(
            "SELECT map_challenge_mode_id, best_level, best_duration_ms, best_score FROM character_mythic_plus_runs WHERE guid = {} AND season = {}",
            player->GetGUID().GetCounter(), uint32(_seasonID));

    if (result)
    {
        do
        {
            Field* fields = result->Fetch();
            WorldPackets::MythicPlus::DungeonScoreMapSummary summary;
            summary.ChallengeModeID = fields[0].GetInt32();
            summary.BestRunLevel = fields[1].GetInt32();
            summary.BestRunDurationMS = fields[2].GetInt32();
            summary.MapScore = fields[3].GetFloat();
            summary.FinishedSuccess = summary.BestRunLevel > 0;
            scoreSummary.Runs.push_back(summary);
            scoreSummary.OverallScoreCurrentSeason += summary.MapScore;
            ++scoreData.TotalRuns;
        } while (result->NextRow());

        if (!scoreData.Seasons.empty())
            scoreData.Seasons.front().SeasonScore = scoreSummary.OverallScoreCurrentSeason;
    }

    player->SetSeasonalContentFields(GetCurrentPeriod(), scoreSummary, scoreData);
}

void SeasonalContentMgr::OnPlayerLogin(Player* player)
{
    if (!player)
        return;

    ApplyPlayerFields(player);
}

void SeasonalContentMgr::RecordActivity(Player* player, WeeklyRewardType type, uint32 activityId, uint32 amount) const
{
    if (!player || !activityId)
        return;

    uint32 period = GetCurrentPeriod();
    bool const uniqueSlot = type != WeeklyRewardType::RankedPvp;

    if (uniqueSlot)
    {
        if (QueryResult existing = CharacterDatabase.PQuery(
            "SELECT 1 FROM character_weekly_reward_activity WHERE guid = {} AND period = {} AND activity_type = {} AND activity_id = {}",
            player->GetGUID().GetCounter(), period, int32(type), activityId))
            return;
    }

    CharacterDatabase.PExecute(
        "INSERT INTO character_weekly_reward_activity (guid, period, activity_type, activity_id, progress) "
        "VALUES ({}, {}, {}, {}, {}) "
        "ON DUPLICATE KEY UPDATE progress = progress + VALUES(progress)",
        player->GetGUID().GetCounter(), period, int32(type), activityId, amount);

    char const* column = "raid_count";
    if (type == WeeklyRewardType::Dungeon)
        column = "dungeon_count";
    else if (type == WeeklyRewardType::RankedPvp)
        column = "pvp_count";

    CharacterDatabase.PExecute(
        "INSERT INTO character_weekly_rewards (guid, period, dungeon_count, raid_count, pvp_count, best_dungeon_level) "
        "VALUES ({}, {}, {}, {}, {}, 0) "
        "ON DUPLICATE KEY UPDATE {} = {} + {}",
        player->GetGUID().GetCounter(), period,
        type == WeeklyRewardType::Dungeon ? 1 : 0,
        type == WeeklyRewardType::Raid ? 1 : 0,
        type == WeeklyRewardType::RankedPvp ? amount : 0,
        column, column, type == WeeklyRewardType::RankedPvp ? amount : 1);
}

void SeasonalContentMgr::OnEncounterComplete(Player* player, InstanceMap* map, DungeonEncounterEntry const* encounter)
{
    if (!player || !map || !encounter)
        return;

    MapEntry const* mapEntry = map->GetEntry();
    if (!mapEntry || mapEntry->IsGarrison() || mapEntry->IsBattlegroundOrArena() || mapEntry->IsScenario())
        return;

    if (mapEntry->IsRaid())
        RecordActivity(player, WeeklyRewardType::Raid, encounter->ID, 1);
    else if (mapEntry->IsNonRaidDungeon())
    {
        RecordActivity(player, WeeklyRewardType::Dungeon, map->GetId(), 1);
        if (!ChallengeModeMgr::FindKeystone(player))
            if (MapChallengeModeEntry const* challenge = ChallengeModeMgr::FindChallengeForMap(map->GetId()))
                ChallengeModeMgr::GiveKeystone(player, int32(challenge->ID), 2);
    }
}

void SeasonalContentMgr::OnPvpWin(Player* player)
{
    if (!player)
        return;

    RecordActivity(player, WeeklyRewardType::RankedPvp, player->GetMapId(), 250);
}

WeeklyRewardProgress SeasonalContentMgr::LoadProgress(Player const* player) const
{
    WeeklyRewardProgress progress;
    progress.Period = GetCurrentPeriod();
    if (!player)
        return progress;

    if (QueryResult result = CharacterDatabase.PQuery(
        "SELECT dungeon_count, raid_count, pvp_count, best_dungeon_level FROM character_weekly_rewards WHERE guid = {} AND period = {}",
        player->GetGUID().GetCounter(), progress.Period))
    {
        Field* fields = result->Fetch();
        progress.DungeonCount = fields[0].GetUInt32();
        progress.RaidCount = fields[1].GetUInt32();
        progress.PvpCount = fields[2].GetUInt32();
        progress.BestDungeonLevel = fields[3].GetUInt32();
    }

    if (QueryResult weekly = CharacterDatabase.PQuery(
        "SELECT COUNT(*), MAX(level) FROM character_mythic_plus_weekly WHERE guid = {} AND resetTime = {}",
        player->GetGUID().GetCounter(), uint64(GetNextWeeklyReset())))
    {
        Field* fields = weekly->Fetch();
        uint32 mythicRuns = fields[0].GetUInt32();
        uint32 bestLevel = fields[1].GetUInt32();
        if (mythicRuns > progress.DungeonCount)
            progress.DungeonCount = mythicRuns;
        if (bestLevel > progress.BestDungeonLevel)
            progress.BestDungeonLevel = bestLevel;
    }

    return progress;
}

void SeasonalContentMgr::SendMythicPlusSeasonData(WorldSession* session) const
{
    WorldPackets::Misc::MythicPlusSeasonData packet;
    packet.IsMythicPlusActive = IsMythicPlusActive();
    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::SendMythicPlusAffixes(WorldSession* session) const
{
    WorldPackets::Misc::MythicPlusCurrentAffixes packet;
    packet.SeasonID = GetCurrentMythicPlusSeasonID();
    packet.Affixes = GetCurrentAffixes();
    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::SendWeeklyRewards(WorldSession* session) const
{
    Player* player = session->GetPlayer();
    WeeklyRewardProgress progress = LoadProgress(player);

    WorldPackets::Misc::WeeklyRewardsResult packet;
    packet.SeasonID = GetCurrentMythicPlusSeasonID();
    packet.NextReset = uint32(GetNextWeeklyReset());
    for (WeeklyRewardThreshold const& threshold : _thresholds)
    {
        WorldPackets::Misc::WeeklyRewardEntry entry;
        entry.Type = int32(threshold.Type);
        entry.Threshold = threshold.Threshold;
        entry.ActivityID = 0;
        entry.RewardItemID = threshold.RewardItemID;
        switch (threshold.Type)
        {
            case WeeklyRewardType::Raid:
                entry.Progress = int32(progress.RaidCount);
                break;
            case WeeklyRewardType::Dungeon:
                entry.Progress = int32(progress.DungeonCount);
                break;
            case WeeklyRewardType::RankedPvp:
                entry.Progress = int32(progress.PvpCount);
                break;
            default:
                break;
        }
        packet.Rewards.push_back(entry);
    }

    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::SendScheduledPvpInfo(WorldSession* session) const
{
    ScheduledPvpInfo info = GetScheduledPvpInfo();
    WorldPackets::Misc::ScheduledPvpInfoResponse packet;
    packet.BrawlID = info.BrawlID;
    packet.TimeRemaining = info.TimeRemaining;
    packet.Active = info.Active;
    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::SendCurrencyTransferLog(WorldSession* session) const
{
    WorldPackets::Misc::CurrencyTransferLog packet;
    if (Player* player = session->GetPlayer())
    {
        if (QueryResult result = CharacterDatabase.PQuery(
            "SELECT currency_id, quantity, unix_time FROM character_currency_transfer_log WHERE guid = {} ORDER BY id DESC LIMIT 50",
            player->GetGUID().GetCounter()))
        {
            do
            {
                Field* fields = result->Fetch();
                WorldPackets::Misc::CurrencyTransferLogEntry entry;
                entry.CurrencyID = fields[0].GetInt32();
                entry.Quantity = fields[1].GetInt32();
                entry.Timestamp = fields[2].GetUInt32();
                packet.Entries.push_back(entry);
            } while (result->NextRow());
        }
    }

    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::SendLandingPageShipments(WorldSession* session) const
{
    WorldPackets::Misc::LandingPageShipmentsResponse packet;
    if (Player* player = session->GetPlayer())
    {
        if (Garrison const* garrison = player->GetGarrison())
        {
            for (Garrison::Plot* plot : const_cast<Garrison*>(garrison)->GetPlots())
            {
                if (!plot || !plot->BuildingInfo.PacketInfo)
                    continue;

                WorldPackets::Misc::LandingPageShipment shipment;
                shipment.PlotInstanceID = plot->PacketInfo.GarrPlotInstanceID;
                shipment.BuildingID = plot->BuildingInfo.PacketInfo->GarrBuildingID;
                packet.Shipments.push_back(shipment);
            }
        }
    }

    session->SendPacket(packet.Write());
}

void SeasonalContentMgr::RecordMythicPlusCompletion(Player* player, int32 /*challengeModeId*/, int32 level, bool /*timed*/)
{
    if (!player)
        return;

    RecordActivity(player, WeeklyRewardType::Dungeon, uint32(std::max(level, 1)), 1);
    CharacterDatabase.PExecute(
        "UPDATE character_weekly_rewards SET best_dungeon_level = GREATEST(best_dungeon_level, {}) WHERE guid = {} AND period = {}",
        uint32(level), player->GetGUID().GetCounter(), GetCurrentPeriod());
}

namespace
{
bool GiveItemToPlayer(Player* player, uint32 itemId, uint32 count)
{
    if (!itemId || !sObjectMgr->GetItemTemplate(itemId))
        return false;

    ItemPosCountVec dest;
    if (player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, count) == EQUIP_ERR_OK)
    {
        player->StoreNewItem(dest, itemId, true);
        return true;
    }

    player->SendItemRetrievalMail(itemId, count, ItemContext::NONE);
    return true;
}
}

void SeasonalContentMgr::ClaimWeeklyReward(Player* player, int32 type, int32 threshold)
{
    if (!player)
        return;

    WeeklyRewardProgress progress = LoadProgress(player);
    int32 current = 0;
    switch (WeeklyRewardType(type))
    {
        case WeeklyRewardType::Raid: current = int32(progress.RaidCount); break;
        case WeeklyRewardType::Dungeon: current = int32(progress.DungeonCount); break;
        case WeeklyRewardType::RankedPvp: current = int32(progress.PvpCount); break;
        default:
            break;
    }

    WeeklyRewardThreshold const* selected = nullptr;
    for (WeeklyRewardThreshold const& entry : _thresholds)
    {
        if (int32(entry.Type) != type)
            continue;
        if (entry.Threshold > current)
            continue;
        if (threshold && entry.Threshold != threshold)
            continue;
        if (!selected || entry.Threshold > selected->Threshold)
            selected = &entry;
    }

    WorldPackets::Misc::WeeklyRewardClaimResult result;
    result.Type = type;
    if (!selected)
    {
        result.Result = 1;
        player->SendDirectMessage(result.Write());
        return;
    }

    if (QueryResult claimed = CharacterDatabase.PQuery(
        "SELECT 1 FROM character_weekly_reward_claim WHERE guid = {} AND period = {} AND reward_type = {} AND threshold = {}",
        player->GetGUID().GetCounter(), GetCurrentPeriod(), type, selected->Threshold))
    {
        result.Result = 2;
        player->SendDirectMessage(result.Write());
        return;
    }

    CharacterDatabase.PExecute(
        "INSERT INTO character_weekly_reward_claim (guid, period, reward_type, threshold) VALUES ({}, {}, {}, {})",
        player->GetGUID().GetCounter(), GetCurrentPeriod(), type, selected->Threshold);

    uint64 gold = uint64(selected->Threshold) * (type == int32(WeeklyRewardType::Raid) ? 100000 : 50000);
    player->ModifyMoney(int64(gold));

    if (selected->RewardItemID)
        GiveItemToPlayer(player, uint32(selected->RewardItemID), 1);

    result.Result = 0;
    result.ItemID = selected->RewardItemID;
    player->SendDirectMessage(result.Write());
}

void SeasonalContentMgr::SendPerksProgramStatus(WorldSession* session)
{
    Player* player = session->GetPlayer();
    if (!player)
        return;

    uint32 period = GetCurrentPeriod();
    int32 currency = 0;
    if (QueryResult result = CharacterDatabase.PQuery(
        "SELECT currency FROM character_perks_program WHERE guid = {} AND period = {}",
        player->GetGUID().GetCounter(), period))
        currency = result->Fetch()[0].GetInt32();
    else
    {
        currency = _perksWeeklyAllowance;
        CharacterDatabase.PExecute(
            "INSERT INTO character_perks_program (guid, period, currency) VALUES ({}, {}, {}) "
            "ON DUPLICATE KEY UPDATE currency = currency",
            player->GetGUID().GetCounter(), period, currency);
    }

    player->SetPerksProgramCurrency(currency);

    WorldPackets::Misc::PerksProgramVendorUpdate update;
    time_t until = GetNextWeeklyReset();
    for (PerksCatalogItem const& catalog : _perksItems)
    {
        WorldPackets::PerksProgram::PerksVendorItem item;
        item.VendorItemID = catalog.VendorItemID;
        item.Price = catalog.Price;
        item.OriginalPrice = catalog.Price;
        item.MountID = catalog.MountID;
        item.BattlePetSpeciesID = catalog.BattlePetSpeciesID;
        item.TransmogSetID = catalog.TransmogSetID;
        item.ToyID = catalog.ToyID;
        item.AvailableUntil = until;
        item.DoesNotExpire = false;
        item.Disabled = false;
        update.Items.push_back(item);
    }
    session->SendPacket(update.Write());
}

void SeasonalContentMgr::HandlePerksPurchase(Player* player, int32 vendorItemId)
{
    if (!player)
        return;

    PerksCatalogItem const* catalog = nullptr;
    for (PerksCatalogItem const& item : _perksItems)
        if (item.VendorItemID == vendorItemId)
            catalog = &item;

    WorldPackets::Misc::PerksProgramResult result;
    result.VendorItemID = vendorItemId;
    if (!catalog)
    {
        result.Result = 1;
        player->SendDirectMessage(result.Write());
        return;
    }

    uint32 period = GetCurrentPeriod();
    int32 currency = 0;
    if (QueryResult db = CharacterDatabase.PQuery(
        "SELECT currency FROM character_perks_program WHERE guid = {} AND period = {}",
        player->GetGUID().GetCounter(), period))
        currency = db->Fetch()[0].GetInt32();

    if (currency < catalog->Price)
    {
        result.Result = 2;
        player->SendDirectMessage(result.Write());
        return;
    }

    currency -= catalog->Price;
    CharacterDatabase.PExecute(
        "INSERT INTO character_perks_program (guid, period, currency) VALUES ({}, {}, {}) "
        "ON DUPLICATE KEY UPDATE currency = {}",
        player->GetGUID().GetCounter(), period, currency, currency);

    player->SetPerksProgramCurrency(currency);
    if (catalog->ItemID)
        GiveItemToPlayer(player, uint32(catalog->ItemID), 1);

    result.Result = 0;
    player->SendDirectMessage(result.Write());
}
