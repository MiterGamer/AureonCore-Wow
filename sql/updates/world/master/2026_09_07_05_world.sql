-- Restore spawns omitted by historical NULL curHealthPct imports.
-- Values include subsequent phase/location corrections from the tested update sequence.
-- Existing spawns and nearby equivalent spawns are preserved.
SET NAMES utf8mb4;

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000930, 245394, 2175, 10424, 10529, '0', 0, 13794, 0, -1, 0, 0, 179.736, -2285.7, 81.9318, 0.993611, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q_camp_garrick_245394', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 245394)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000930)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 245394 AND `map` = 2175 AND `PhaseId` = 13794 AND ABS(`position_x` - 179.736) < 1 AND ABS(`position_y` - -2285.7) < 1 AND ABS(`position_z` - 81.9318) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000931, 153211, 2175, 10424, 10528, '0', 0, 13811, 0, -1, 0, 0, 495.411, -2354.56, 163.208, 4.63827, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55763_meredy_ritual', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 153211)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000931)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 153211 AND `map` = 2175 AND `PhaseId` = 13811 AND ABS(`position_x` - 495.411) < 1 AND ABS(`position_y` - -2354.56) < 1 AND ABS(`position_z` - 163.208) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000933, 156882, 2175, 10424, 10528, '0', 0, 13811, 0, -1, 0, 0, 393.219, -2442.93, 125.913, 2.78769, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55763_meredy_roost', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 156882)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000933)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 156882 AND `map` = 2175 AND `PhaseId` = 13811 AND ABS(`position_x` - 393.219) < 1 AND ABS(`position_y` - -2442.93) < 1 AND ABS(`position_z` - 125.913) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000934, 245397, 2175, 10424, 10568, '0', 0, 13840, 0, -1, 0, 0, 317.255, -2172.24, 106.065, 0.81894, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q56344_jaina_ruins', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 245397)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000934)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 245397 AND `map` = 2175 AND `PhaseId` = 13840 AND ABS(`position_x` - 317.255) < 1 AND ABS(`position_y` - -2172.24) < 1 AND ABS(`position_z` - 106.065) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000935, 156961, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 703.908, -1876.64, 186.966, 1.18269, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55981_jaina_inner', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 156961)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000935)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 156961 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 703.908) < 1 AND ABS(`position_y` - -1876.64) < 1 AND ABS(`position_z` - 186.966) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000936, 245667, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 697.833, -1877.56, 186.591, 0.99581, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55989_garrick_inner', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 245667)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000936)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 245667 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 697.833) < 1 AND ABS(`position_y` - -1877.56) < 1 AND ABS(`position_z` - 186.591) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000937, 156942, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 706.325, -1882.76, 186.591, 1.29611, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55988_henry_inner', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 156942)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000937)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 156942 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 706.325) < 1 AND ABS(`position_y` - -1882.76) < 1 AND ABS(`position_z` - 186.591) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000938, 156954, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 708.78, -1868.83, 189.181, 4.46616, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55990_kelra_chained', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 156954)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000938)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 156954 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 708.78) < 1 AND ABS(`position_y` - -1868.83) < 1 AND ABS(`position_z` - 189.181) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000939, 156965, 2175, 10424, 10530, '0', 0, 13843, 0, -1, 0, 0, 708.691, -1868.79, 186.706, 4.46616, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55990_kelra_free', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 156965)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000939)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 156965 AND `map` = 2175 AND `PhaseId` = 13843 AND ABS(`position_x` - 708.691) < 1 AND ABS(`position_y` - -1868.79) < 1 AND ABS(`position_z` - 186.706) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000940, 245686, 2175, 10424, 10530, '0', 0, 13417, 0, -1, 0, 0, 712.378, -1859.51, 186.961, 4.24748, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55992_jaina_post', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 245686)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000940)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 245686 AND `map` = 2175 AND `PhaseId` = 13417 AND ABS(`position_x` - 712.378) < 1 AND ABS(`position_y` - -1859.51) < 1 AND ABS(`position_z` - 186.961) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000941, 244389, 2175, 10424, 10530, '0', 0, 13417, 0, -1, 0, 0, 706.917, -1870.15, 186.966, 1.2756, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55991_kalecgos_er', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 244389)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000941)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 244389 AND `map` = 2175 AND `PhaseId` = 13417 AND ABS(`position_x` - 706.917) < 1 AND ABS(`position_y` - -1870.15) < 1 AND ABS(`position_z` - 186.966) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000942, 238913, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3698.58, -1886.41, 4.47553, 6.03832, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q87547_kalecgos_2444', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 238913)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000942)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 238913 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3698.58) < 1 AND ABS(`position_y` - -1886.41) < 1 AND ABS(`position_z` - 4.47553) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000951, 153580, 2175, 10424, 10530, '0', 0, 13334, 0, -1, 0, 0, 587.007, -2063.29, 159.617, 3.51945, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q55981_gorgroth', 0
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 153580)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000951)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 153580 AND `map` = 2175 AND `PhaseId` = 13334 AND ABS(`position_x` - 587.007) < 1 AND ABS(`position_y` - -2063.29) < 1 AND ABS(`position_z` - 159.617) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000952, 189022, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3676.77, -1898.58, 7.73651, 0.371057, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q87562_toddy_beach', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 189022)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000952)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 189022 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3676.77) < 1 AND ABS(`position_y` - -1898.58) < 1 AND ABS(`position_z` - 7.73651) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000953, 189035, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3678.11, -1901.11, 7.73372, 0.911006, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70123_azurathel_beach', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 189035)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000953)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 189035 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3678.11) < 1 AND ABS(`position_y` - -1901.11) < 1 AND ABS(`position_z` - 7.73372) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000954, 189021, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3676.46, -1895.8, 7.73695, 5.7841, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70124_thaelin_beach', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 189021)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000954)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 189021 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3676.46) < 1 AND ABS(`position_y` - -1895.8) < 1 AND ABS(`position_z` - 7.73695) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000955, 187252, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3541.67, -1469.27, 94.6977, 1.51182, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70123_azurathel_embassy', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 187252)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000955)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 187252 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3541.67) < 1 AND ABS(`position_y` - -1469.27) < 1 AND ABS(`position_z` - 94.6977) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000956, 189058, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3544.27, -1447.87, 92.9176, 0.601542, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70124_thaelin_embassy', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 189058)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000956)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 189058 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3544.27) < 1 AND ABS(`position_y` - -1447.87) < 1 AND ABS(`position_z` - 92.9176) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000957, 184449, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3534.29, -1467.72, 93.7174, 1.51226, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q67053_garrick', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 184449)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000957)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 184449 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3534.29) < 1 AND ABS(`position_y` - -1467.72) < 1 AND ABS(`position_z` - 93.7174) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000958, 184452, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3612.7, -1438.44, 95.5746, 2.85767, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q67053_breka', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 184452)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000958)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 184452 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3612.7) < 1 AND ABS(`position_y` - -1438.44) < 1 AND ABS(`position_z` - 95.5746) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000959, 187257, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3590.98, -1397.14, 99.1163, 5.38296, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q66101_aster', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 187257)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000959)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 187257 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3590.98) < 1 AND ABS(`position_y` - -1397.14) < 1 AND ABS(`position_z` - 99.1163) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000960, 187261, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3529.68, -1437.72, 92.9028, 3.46657, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q66112_grun', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 187261)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000960)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 187261 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3529.68) < 1 AND ABS(`position_y` - -1437.72) < 1 AND ABS(`position_z` - 92.9028) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000961, 192055, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3602.61, -1395.82, 100.391, 1.27642, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70029_veeno', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 192055)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000961)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 192055 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3602.61) < 1 AND ABS(`position_y` - -1395.82) < 1 AND ABS(`position_z` - 100.391) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000962, 192438, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3539.96, -1441.94, 92.9271, 4.77368, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q69965_haephesta', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 192438)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000962)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 192438 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3539.96) < 1 AND ABS(`position_y` - -1441.94) < 1 AND ABS(`position_z` - 92.9271) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000963, 189055, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3455.2, -1957.94, 24.0289, 2.99888, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q70122_rellid', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 189055)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000963)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 189055 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3455.2) < 1 AND ABS(`position_y` - -1957.94) < 1 AND ABS(`position_z` - 24.0289) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000964, 193707, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3586.47, -1401.74, 98.27, 3.28122, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q66101_surveyor_disc', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 193707)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000964)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 193707 AND `map` = 2444 AND `PhaseId` = 0 AND ABS(`position_x` - 3586.47) < 1 AND ABS(`position_y` - -1401.74) < 1 AND ABS(`position_z` - 98.27) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000965, 221967, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8835.67, 639.686, 96.1999, 4.18778, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q81930_jaina_sw', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 221967)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000965)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 221967 AND `map` = 0 AND `PhaseId` = 0 AND ABS(`position_x` - -8835.67) < 1 AND ABS(`position_y` - 639.686) < 1 AND ABS(`position_z` - 96.1999) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000966, 214031, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8868.51, 651.979, 96.126, 5.81983, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q79132_racing_enthusiast', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 214031)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000966)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 214031 AND `map` = 0 AND `PhaseId` = 0 AND ABS(`position_x` - -8868.51) < 1 AND ABS(`position_y` - 651.979) < 1 AND ABS(`position_z` - 96.126) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000967, 212899, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8828.67, 640.042, 95.2741, 5.00052, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q78596_greyguard', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 212899)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000967)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 212899 AND `map` = 0 AND `PhaseId` = 0 AND ABS(`position_x` - -8828.67) < 1 AND ABS(`position_y` - 640.042) < 1 AND ABS(`position_z` - 95.2741) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000968, 213620, 1, 9310, 9609, '0', 0, 0, 0, -1, 0, 0, -7091.96, 1280.36, -93.3926, 1.17644, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q78714_thrall_silithus', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 213620)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000968)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 213620 AND `map` = 1 AND `PhaseId` = 0 AND ABS(`position_x` - -7091.96) < 1 AND ABS(`position_y` - 1280.36) < 1 AND ABS(`position_z` - -93.3926) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000969, 213625, 1, 9310, 9609, '0', 0, 0, 0, -1, 0, 0, -7093.65, 1281.72, -93.3283, 1.27377, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q81930_jaina_silithus', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 213625)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000969)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 213625 AND `map` = 1 AND `PhaseId` = 0 AND ABS(`position_x` - -7093.65) < 1 AND ABS(`position_y` - 1281.72) < 1 AND ABS(`position_z` - -93.3283) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000970, 213624, 2698, 0, 0, '0', 0, 0, 0, -1, 0, 0, -8358.07, 1754.71, 314.959, 3.32171, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q78714_magni_2698', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 213624)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000970)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 213624 AND `map` = 2698 AND `PhaseId` = 0 AND ABS(`position_x` - -8358.07) < 1 AND ABS(`position_y` - 1754.71) < 1 AND ABS(`position_z` - 314.959) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000971, 213625, 2698, 0, 0, '0', 0, 0, 0, -1, 0, 0, -8338.92, 1757.1, 314.822, 3.22712, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q78715_jaina_2698', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 213625)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000971)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 213625 AND `map` = 2698 AND `PhaseId` = 0 AND ABS(`position_x` - -8338.92) < 1 AND ABS(`position_y` - 1757.1) < 1 AND ABS(`position_z` - 314.822) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000972, 213627, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -849.071, 4473.99, 588.932, 5.48444, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q78716_khadgar', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 213627)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000972)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 213627 AND `map` = 1220 AND `PhaseId` = 0 AND ABS(`position_x` - -849.071) < 1 AND ABS(`position_y` - 4473.99) < 1 AND ABS(`position_z` - 588.932) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000973, 214651, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -838.722, 4480.66, 588.939, 2.82956, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q80500_moira', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 214651)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000973)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 214651 AND `map` = 1220 AND `PhaseId` = 0 AND ABS(`position_x` - -838.722) < 1 AND ABS(`position_y` - 4480.66) < 1 AND ABS(`position_z` - 588.939) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000974, 214669, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -888.292, 4455.68, 737.677, 3.47469, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'q80500_brann', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 214669)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000974)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 214669 AND `map` = 1220 AND `PhaseId` = 0 AND ABS(`position_x` - -888.292) < 1 AND ABS(`position_y` - 4455.68) < 1 AND ABS(`position_z` - 737.677) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000975, 161350, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 880.712, -1781.19, 181.341, 3.64195, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_garrick', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 161350)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000975)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 161350 AND `map` = 2236 AND `PhaseId` = 0 AND ABS(`position_x` - 880.712) < 1 AND ABS(`position_y` - -1781.19) < 1 AND ABS(`position_z` - 181.341) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000976, 161504, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 886.184, -1780.18, 181.271, 3.58286, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_henry', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 161504)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000976)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 161504 AND `map` = 2236 AND `PhaseId` = 0 AND ABS(`position_x` - 886.184) < 1 AND ABS(`position_y` - -1780.18) < 1 AND ABS(`position_z` - 181.271) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000977, 245401, 2236, 10581, 10581, '150', 0, 0, 0, -1, 0, 0, 882.929, -1783.68, 181.341, 3.64195, 7200, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', 'dc_jaina', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 245401)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000977)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 245401 AND `map` = 2236 AND `PhaseId` = 0 AND ABS(`position_x` - 882.929) < 1 AND ABS(`position_y` - -1783.68) < 1 AND ABS(`position_z` - 181.341) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000980, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 701.967, -1869.11, 186.591, 3.55572, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_1', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 161306)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000980)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 161306 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 701.967) < 1 AND ABS(`position_y` - -1869.11) < 1 AND ABS(`position_z` - 186.591) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000981, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 710.936, -1862.23, 186.591, 3.21643, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_2', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 161306)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000981)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 161306 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 710.936) < 1 AND ABS(`position_y` - -1862.23) < 1 AND ABS(`position_z` - 186.591) < 1);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
SELECT 8000982, 161306, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 713.2, -1873.57, 186.591, 4.3882, 120, 0, 0, 100, 0, NULL, 256, NULL, NULL, '', 'q55990_rune_beam_3', 69587
WHERE EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 161306)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `guid` = 8000982)
  AND NOT EXISTS (SELECT 1 FROM `creature` WHERE `id` = 161306 AND `map` = 2175 AND `PhaseId` = 13839 AND ABS(`position_x` - 713.2) < 1 AND ABS(`position_y` - -1873.57) < 1 AND ABS(`position_z` - 186.591) < 1);

