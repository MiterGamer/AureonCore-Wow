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

#ifndef TRINITYCORE_SEASONAL_CONTENT_MGR_H
#define TRINITYCORE_SEASONAL_CONTENT_MGR_H

#include "Define.h"
#include <array>
#include <vector>

class Player;
class InstanceMap;
class WorldSession;
struct DungeonEncounterEntry;

enum class WeeklyRewardType : int32
{
    Raid    = 0,
    Dungeon = 1,
    RankedPvp = 2
};

struct WeeklyRewardThreshold
{
    WeeklyRewardType Type = WeeklyRewardType::Raid;
    int32 Threshold = 0;
    int32 RewardItemID = 0;
};

struct WeeklyRewardProgress
{
    uint32 Period = 0;
    uint32 DungeonCount = 0;
    uint32 RaidCount = 0;
    uint32 PvpCount = 0;
    uint32 BestDungeonLevel = 0;
};

struct ScheduledPvpInfo
{
    int32 BrawlID = 0;
    int32 TimeRemaining = 0;
    bool Active = false;
};

class TC_GAME_API SeasonalContentMgr
{
public:
    static SeasonalContentMgr* instance();

    void LoadFromDB();

    uint32 GetCurrentPeriod() const;
    int32 GetCurrentMythicPlusSeasonID() const;
    int32 GetCurrentMythicPlusMilestoneSeasonID() const;
    bool IsMythicPlusActive() const;
    std::vector<int32> GetCurrentAffixes() const;
    time_t GetNextWeeklyReset() const;
    ScheduledPvpInfo GetScheduledPvpInfo() const;

    void OnPlayerLogin(Player* player);
    void OnEncounterComplete(Player* player, InstanceMap* map, DungeonEncounterEntry const* encounter);
    void OnPvpWin(Player* player);

    WeeklyRewardProgress LoadProgress(Player const* player) const;
    void RecordMythicPlusCompletion(Player* player, int32 challengeModeId, int32 level, bool timed);
    void ClaimWeeklyReward(Player* player, int32 type, int32 threshold);
    void SendPerksProgramStatus(WorldSession* session);
    void HandlePerksPurchase(Player* player, int32 vendorItemId);
    void SendMythicPlusSeasonData(WorldSession* session) const;
    void SendMythicPlusAffixes(WorldSession* session) const;
    void SendWeeklyRewards(WorldSession* session) const;
    void SendScheduledPvpInfo(WorldSession* session) const;
    void SendCurrencyTransferLog(WorldSession* session) const;
    void SendLandingPageShipments(WorldSession* session) const;

private:
    SeasonalContentMgr() = default;

    void RefreshSeason();
    void ApplyPlayerFields(Player* player) const;
    void RecordActivity(Player* player, WeeklyRewardType type, uint32 activityId, uint32 amount) const;

    int32 _seasonID = 0;
    int32 _milestoneSeasonID = 0;
    bool _mythicPlusActive = false;
    struct PerksCatalogItem
    {
        int32 VendorItemID = 0;
        int32 ItemID = 0;
        int32 Price = 0;
        int32 MountID = 0;
        int32 BattlePetSpeciesID = 0;
        int32 TransmogSetID = 0;
        int32 ToyID = 0;
    };

    std::array<std::vector<int32>, 12> _affixRotation;
    std::vector<WeeklyRewardThreshold> _thresholds;
    std::vector<PerksCatalogItem> _perksItems;
    int32 _perksWeeklyAllowance = 500;
};

#define sSeasonalContentMgr SeasonalContentMgr::instance()

#endif
