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

#ifndef TRINITYCORE_MYTHIC_PLUS_PACKETS_COMMON_H
#define TRINITYCORE_MYTHIC_PLUS_PACKETS_COMMON_H

#include "ObjectGuid.h"
#include "PacketUtilities.h"

namespace WorldPackets
{
    namespace MythicPlus
    {
        struct DungeonScoreMapSummary
        {
            int32 ChallengeModeID = 0;
            float MapScore = 0.0f;
            int32 BestRunLevel = 0;
            int32 BestRunDurationMS = 0;
            bool FinishedSuccess = false;
            uint8 Unknown1110 = 0;
        };

        inline bool operator==(DungeonScoreMapSummary const& left, DungeonScoreMapSummary const& right)
        {
            return left.ChallengeModeID == right.ChallengeModeID
                && left.MapScore == right.MapScore
                && left.BestRunLevel == right.BestRunLevel
                && left.BestRunDurationMS == right.BestRunDurationMS
                && left.FinishedSuccess == right.FinishedSuccess
                && left.Unknown1110 == right.Unknown1110;
        }

        struct DungeonScoreSummary
        {
            float OverallScoreCurrentSeason = 0.0f;
            float LadderScoreCurrentSeason = 0.0f;
            std::vector<DungeonScoreMapSummary> Runs;
        };

        inline bool operator==(DungeonScoreSummary const& left, DungeonScoreSummary const& right)
        {
            return left.OverallScoreCurrentSeason == right.OverallScoreCurrentSeason
                && left.LadderScoreCurrentSeason == right.LadderScoreCurrentSeason
                && left.Runs == right.Runs;
        }

        inline bool operator!=(DungeonScoreSummary const& left, DungeonScoreSummary const& right)
        {
            return !(left == right);
        }

        struct MythicPlusMember
        {
            ObjectGuid BnetAccountGUID;
            uint64 GuildClubMemberID = 0;
            ObjectGuid GUID;
            ObjectGuid GuildGUID;
            uint32 NativeRealmAddress = 0;
            uint32 VirtualRealmAddress = 0;
            int32 ChrSpecializationID = 0;
            int8 RaceID = 0;
            int32 ItemLevel = 0;
            int32 CovenantID = 0;
            int32 SoulbindID = 0;
        };

        inline bool operator==(MythicPlusMember const& left, MythicPlusMember const& right)
        {
            return left.BnetAccountGUID == right.BnetAccountGUID
                && left.GuildClubMemberID == right.GuildClubMemberID
                && left.GUID == right.GUID
                && left.GuildGUID == right.GuildGUID
                && left.NativeRealmAddress == right.NativeRealmAddress
                && left.VirtualRealmAddress == right.VirtualRealmAddress
                && left.ChrSpecializationID == right.ChrSpecializationID
                && left.RaceID == right.RaceID
                && left.ItemLevel == right.ItemLevel
                && left.CovenantID == right.CovenantID
                && left.SoulbindID == right.SoulbindID;
        }

        struct MythicPlusRun
        {
            int32 MapChallengeModeID = 0;
            bool Completed = false;
            uint32 Level = 0;
            int32 DurationMs = 0;
            Timestamp<> StartDate;
            Timestamp<> CompletionDate;
            int32 Season = 0;
            std::vector<MythicPlusMember> Members;
            float RunScore = 0.0f;
            int32 Unknown_1120 = 0;
            std::array<int32, 4> KeystoneAffixIDs;
        };

        inline bool operator==(MythicPlusRun const& left, MythicPlusRun const& right)
        {
            return left.MapChallengeModeID == right.MapChallengeModeID
                && left.Completed == right.Completed
                && left.Level == right.Level
                && left.DurationMs == right.DurationMs
                && left.StartDate.AsUnderlyingType() == right.StartDate.AsUnderlyingType()
                && left.CompletionDate.AsUnderlyingType() == right.CompletionDate.AsUnderlyingType()
                && left.Season == right.Season
                && left.Members == right.Members
                && left.RunScore == right.RunScore
                && left.Unknown_1120 == right.Unknown_1120
                && left.KeystoneAffixIDs == right.KeystoneAffixIDs;
        }

        struct DungeonScoreBestRunForAffix
        {
            int32 KeystoneAffixID = 0;
            MythicPlusRun Run;
            float Score = 0.0f;
        };

        inline bool operator==(DungeonScoreBestRunForAffix const& left, DungeonScoreBestRunForAffix const& right)
        {
            return left.KeystoneAffixID == right.KeystoneAffixID
                && left.Run == right.Run
                && left.Score == right.Score;
        }

        struct DungeonScoreMapData
        {
            int32 MapChallengeModeID = 0;
            std::vector<DungeonScoreBestRunForAffix> BestRuns;
            float OverAllScore = 0.0f;
        };

        inline bool operator==(DungeonScoreMapData const& left, DungeonScoreMapData const& right)
        {
            return left.MapChallengeModeID == right.MapChallengeModeID
                && left.BestRuns == right.BestRuns
                && left.OverAllScore == right.OverAllScore;
        }

        struct DungeonScoreSeasonData
        {
            int32 Season = 0;
            std::vector<DungeonScoreMapData> SeasonMaps;
            std::vector<DungeonScoreMapData> LadderMaps;
            float SeasonScore = 0.0f;
            float LadderScore = 0.0f;
        };

        inline bool operator==(DungeonScoreSeasonData const& left, DungeonScoreSeasonData const& right)
        {
            return left.Season == right.Season
                && left.SeasonMaps == right.SeasonMaps
                && left.LadderMaps == right.LadderMaps
                && left.SeasonScore == right.SeasonScore
                && left.LadderScore == right.LadderScore;
        }

        struct DungeonScoreData
        {
            std::vector<DungeonScoreSeasonData> Seasons;
            int32 TotalRuns = 0;
        };

        inline bool operator==(DungeonScoreData const& left, DungeonScoreData const& right)
        {
            return left.Seasons == right.Seasons
                && left.TotalRuns == right.TotalRuns;
        }

        inline bool operator!=(DungeonScoreData const& left, DungeonScoreData const& right)
        {
            return !(left == right);
        }

        ByteBuffer& operator<<(ByteBuffer& data, DungeonScoreSummary const& dungeonScoreSummary);
        ByteBuffer& operator<<(ByteBuffer& data, DungeonScoreData const& dungeonScoreData);
    }
}

#endif // TRINITYCORE_MYTHIC_PLUS_PACKETS_COMMON_H
