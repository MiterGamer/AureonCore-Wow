-- 55639 Who Lurks in the Pit: cocoons were unusable (GO_FLAG_IN_USE + state already used).
-- After Hrun dies, Ralia 156929 (stag, "Hop on!") is a personal vehicle and runs the player
-- out of the pit. Path nodes are existing cocoon/Hrun/Bjorn spawn coords only. No teleport.
-- Cave-collapse scene package is not in 12.1; do not play it (bricks the client).
-- VehicleId 6832 is the working Exile's Reach player-seat kit (Giant Boar). Ralia has none in TDB.
SET NAMES utf8mb4;

-- Thick Cocoon 339568: drop IN_USE (0x1), keep 0x40000 like working Ritual Pedestals.
UPDATE `gameobject_template_addon` SET `flags` = `flags` & ~1 WHERE `entry` = 339568;
UPDATE `gameobject` SET `state` = 1 WHERE `id` = 339568 AND `map` = 2175;

-- Ralia: spellclick vehicle. Immune so she is not attacked in the pit.
UPDATE `creature_template` SET
  `npcflag` = `npcflag` | 16777216,
  `unit_flags` = `unit_flags` | 768,
  `VehicleId` = 6832,
  `AIName` = 'SmartAI'
WHERE `entry` = 156929;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 156900;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 156929;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(156929, 46598, 1, 0);

-- Ride up: reverse of the descent marked by cocoon spawns, end at Bjorn pit-mouth spawn.
DELETE FROM `waypoint_path` WHERE `PathId` = 15692900;
INSERT INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(15692900, 1, 0x02, 14, '156929 Ralia Dreamchaser - pit escape (cocoon/Bjorn spawns)');

DELETE FROM `waypoint_path_node` WHERE `PathId` = 15692900;
INSERT INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`) VALUES
(15692900, 0, 123.569, -2238.92, -5.86077, NULL, 0),
(15692900, 1, 65.342, -2276.59, -0.662279, NULL, 0),
(15692900, 2, 36.0295, -2199.45, 17.0092, NULL, 0),
(15692900, 3, 111.057, -2217.92, 32.9515, NULL, 0),
(15692900, 4, 80.4809, -2279.52, 60.4192, NULL, 0),
(15692900, 5, 89.684, -2249.26, 94.7782, NULL, 0);

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (156900, 156929);
INSERT INTO `smart_scripts`
(`entryorguid`, `source_type`, `id`, `link`, `Difficulties`,
 `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
 `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`,
 `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`,
 `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
 `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
-- Hrun: aggro line, death line, personal-summon Ralia at his corpse for the killer.
(156900, 0, 0, 0, '', 4, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Aggro - Talk 0'),
(156900, 0, 1, 2, '', 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Death - Talk 1'),
(156900, 0, 2, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 12, 156929, 8, 0, 0, 3, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Death - Summon personal Ralia'),
-- Ralia: hop-on line, no gravity so the spline can climb, ride existing pit coords, credit, despawn.
(156929, 0, 0, 1, '', 54, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Talk 0'),
(156929, 0, 1, 2, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Disable gravity'),
(156929, 0, 2, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 141, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Just Summoned - Set hover'),
(156929, 0, 3, 0, '', 27, 0, 100, 0, 0, 0, 0, 0, 0, 53, 1, 15692900, 0, 55639, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Passenger Boarded - Start pit path'),
(156929, 0, 4, 5, '', 58, 0, 100, 0, 0, 15692900, 0, 0, 0, 33, 156929, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Ended - Kill credit 156929'),
(156929, 0, 5, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia - On Path Ended - Despawn');
