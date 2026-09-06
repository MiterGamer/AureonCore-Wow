-- Kalecgos 244389 after Darkmaul (sniff 19-26-03 CreateObject1 20:21:47 map 2175).
-- Display 75614, NpcFlags 1. Gossip 39219 already on template. Phase 13417 after 55992.
SET NAMES utf8mb4;

DELETE FROM `creature` WHERE `guid` = 8000941;
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000941, 244389, 2175, 10424, 10530, '0', 0, 13417, 0, -1, 0, 0, 706.9167, -1870.1493, 186.96568, 1.27559614, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55991_kalecgos_er', 69587);
