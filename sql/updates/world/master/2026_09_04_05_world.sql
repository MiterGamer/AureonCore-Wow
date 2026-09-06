-- 55639 Who Lurks in the Pit: cave collapse + elk ride from retail 12.1 sniff
-- dump_12.1.0.69587_2026-09-04_14-55-01
-- Hrun death: SMSG_PLAY_SCENE 2423 / package 2825
-- Ralia 156929: InteractSpellID 312463, click (not auto-board), no vehicle
-- Ride: SMSG_PLAY_SCENE 2379 / package 2775, then spell 312548
--   teleport 108.8, -2271.3, 97.1 facing 5.445427 + credit 156929
-- Do not play 312605 / package 2773 (that package bricks 12.1).
SET NAMES utf8mb4;

-- TDB VehicleId is 0. 6832 was a local Giant-Boar stand-in.
UPDATE `creature_template` SET
  `VehicleId` = 0,
  `npcflag` = `npcflag` | 16777216,
  `unit_flags` = `unit_flags` | 768,
  `AIName` = '',
  `ScriptName` = 'npc_ralia_dreamchaser_pit'
WHERE `entry` = 156929;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 156929;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(156929, 312463, 3, 0);

DELETE FROM `waypoint_path_node` WHERE `PathId` = 15692900;
DELETE FROM `waypoint_path` WHERE `PathId` = 15692900;

UPDATE `scene_template` SET `ScriptName` = 'SmartScene' WHERE `SceneId` IN (2379, 2491);

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (156900, 156929);
DELETE FROM `smart_scripts` WHERE `source_type` = 10 AND `entryorguid` IN (2379, 2491);

INSERT INTO `smart_scripts`
(`entryorguid`, `source_type`, `id`, `link`, `Difficulties`,
 `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
 `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`,
 `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`,
 `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`,
 `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
-- Hrun 156900
(156900, 0, 0, 0, '', 4, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Aggro - Talk 0'),
(156900, 0, 1, 2, '', 6, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Death - Talk 1'),
(156900, 0, 2, 3, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 129, 2423, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Hrun - On Death - Play cave collapse scene 2423'),
(156900, 0, 3, 0, '', 61, 0, 100, 0, 0, 0, 0, 0, 0, 12, 156929, 3, 90000, 0, 3, 1, 0, 8, 0, 0, 0, 0, 73.5503, -2129.3, -25.8277, 2.1991148, 'Hrun - On Death - Summon personal Ralia (sniff pos)'),
-- Scene 2379 Alliance elk ride / 2491 same package 2775
(2379, 10, 0, 0, '', 81, 0, 100, 0, 0, 0, 0, 0, 0, 85, 312548, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia ride scene - On Complete - Cast 312548'),
(2379, 10, 1, 0, '', 80, 0, 100, 0, 0, 0, 0, 0, 0, 85, 312548, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia ride scene - On Cancel - Cast 312548'),
(2491, 10, 0, 0, '', 81, 0, 100, 0, 0, 0, 0, 0, 0, 85, 312548, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia ride scene - On Complete - Cast 312548'),
(2491, 10, 1, 0, '', 80, 0, 100, 0, 0, 0, 0, 0, 0, 85, 312548, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralia ride scene - On Cancel - Cast 312548');
