-- Exile's Reach: Stand Your Ground (58209 / 59927) — Cole/Throg can be sparred.
-- WCDB used ScriptName npc_exiles_reach_ship_* which vanilla TC does not register.
-- The spar clone (157051) was friendly+immune and no 174971 spar points existed,
-- so the summoned partner never became attackable.
SET NAMES utf8mb4;

UPDATE `world`.`creature_template`
SET `ScriptName` = 'npc_cole_ship'
WHERE `entry` = 160664;

UPDATE `world`.`creature_template`
SET `ScriptName` = 'npc_throg_ship'
WHERE `entry` = 166583;

UPDATE `world`.`creature_template`
SET `ScriptName` = 'npc_sparring_partner_exiles_reach',
    `faction` = 7,
    `unit_flags` = 0
WHERE `entry` IN (157051, 166814);

INSERT IGNORE INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES
(303064, 'spell_summon_sparring_partner'),
(303065, 'spell_summon_sparring_partner'),
(325107, 'spell_summon_sparring_partner'),
(325108, 'spell_summon_sparring_partner');

INSERT IGNORE INTO `world`.`creature_template_sparring` (`Entry`, `NoNPCDamageBelowHealthPct`) VALUES
(157051, 95),
(166814, 95),
(160664, 95),
(166583, 95);

-- Spar Point Advertisement markers on both starter ships (script looks within 25 yd)
DELETE FROM `world`.`creature` WHERE `guid` BETWEEN 730202 AND 730211;
INSERT INTO `world`.`creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(730202, 174971, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0, -11.1898, -7.82821, 5.42829, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730203, 174971, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0, -14.0159,  4.46932, 5.58979, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730204, 174971, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0,  -7.6347,  9.62948, 5.22708, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730205, 174971, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0, -13.8277, -4.42007, 5.58518, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730206, 174971, 2261, 10424, 10639, '0', 0, 0, 0, -1, 0, 0, -11.2698,  8.09454, 5.42378, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730207, 174971, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0, -11.2190, 11.98100, 8.84927, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730208, 174971, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0,  -8.5000,  8.50000, 8.85000, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730209, 174971, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0, -14.0000,  8.00000, 8.85000, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730210, 174971, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0,  -6.0000, 14.00000, 8.85000, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0),
(730211, 174971, 2369, 10424, 13377, '0', 0, 0, 0, -1, 0, 0, -16.0000, 14.00000, 8.85000, 0, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, '', NULL, 0);
