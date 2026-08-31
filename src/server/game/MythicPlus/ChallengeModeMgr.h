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

#ifndef TRINITYCORE_CHALLENGE_MODE_MGR_H
#define TRINITYCORE_CHALLENGE_MODE_MGR_H

#include "Define.h"
#include "ObjectGuid.h"
#include <array>
#include <unordered_map>

class Player;
class Item;
class InstanceMap;
class WorldSession;
struct MapChallengeModeEntry;
struct DungeonEncounterEntry;

struct ChallengeModeRun
{
    uint32 InstanceId = 0;
    uint32 MapId = 0;
    int32 ChallengeModeID = 0;
    int32 KeystoneLevel = 2;
    std::array<int32, 4> Affixes = { };
    uint32 TimeLimitMS = 1800000;
    uint32 DeathCount = 0;
    time_t StartTime = 0;
    ObjectGuid KeystoneOwner;
    bool Completed = false;
};

class TC_GAME_API ChallengeModeMgr
{
public:
    static ChallengeModeMgr* instance();

    void Start(Player* player, ObjectGuid const& itemGuid);
    void Reset(Player* player);
    void OnPlayerDeath(Player* player);
    void OnEncounterComplete(Player* player, InstanceMap* map, DungeonEncounterEntry const* encounter);
    ChallengeModeRun const* GetRun(InstanceMap const* map) const;

    static Item* FindKeystone(Player* player);
    static MapChallengeModeEntry const* FindChallengeForMap(uint32 mapId);
    static uint32 GetKeystoneItemId();
    static void GiveKeystone(Player* player, int32 challengeModeId, int32 level);

private:
    ChallengeModeMgr() = default;

    ChallengeModeRun* GetRunForPlayer(Player* player);
    void BroadcastStart(InstanceMap* map, ChallengeModeRun const& run);
    void Complete(InstanceMap* map, ChallengeModeRun& run);
    void SaveBestRun(Player* player, ChallengeModeRun const& run, uint32 durationMs, bool timed) const;
    void ApplyPlayerChallengeFields(Player* player, ChallengeModeRun const& run) const;

    std::unordered_map<uint32, ChallengeModeRun> _runsByInstance;
};

#define sChallengeModeMgr ChallengeModeMgr::instance()

#endif
