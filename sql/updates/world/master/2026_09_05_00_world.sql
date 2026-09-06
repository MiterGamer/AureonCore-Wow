-- Waking Shores / Wild Coast from sniff 04-33-55 (build 69587).
-- dump_12.1.0.69587_2026-09-05_04-33-55
-- Kalecgos 238913 GUID 8000942 reused (87555 ender, 87562 starter).
-- Cole / 160664 / 13753 untouched. No invented coordinates or phases.
SET NAMES utf8mb4;

-- Sniffed npcflags from CreateObject1
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (238913, 184449, 184452);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 3 WHERE `entry` IN (189022, 189035, 187252, 189058, 187257, 192438);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 4227 WHERE `entry` = 189021;
UPDATE `creature_template` SET `npcflag` = `npcflag` | 83 WHERE `entry` IN (187261, 192055);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 16777216 WHERE `entry` = 189055;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_archivist_rellid' WHERE `entry` = 189055;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_surveyors_disc' WHERE `entry` = 193707;
UPDATE `gameobject_template` SET `AIName` = '', `ScriptName` = 'go_protodragon_rib_cage' WHERE `entry` = 379137;

-- Existing TDB gossip menus (sniff 04-33-55)
DELETE FROM `creature_template_gossip` WHERE `CreatureID` IN (189021, 192438, 187261, 192055);
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(189021, 30007, 69587),
(192438, 28420, 69587),
(187261, 29958, 69587),
(192055, 8518, 69587);

-- Spellclick 04:39:53 / 04:40:07: player casts 383057 on 189055 (credit 194138).
-- Spellclick 04:46:03: player casts 382063 on self via 193707 (credit 184913).
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (189055, 193707);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(189055, 383057, 1, 0),
(193707, 382063, 3, 0);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 18 AND `SourceGroup` IN (189055, 193707)
  AND `Comment` LIKE 'Sniff 04-33-55:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(18, 189055, 383057, 0, 0, 47, 0, 70122, 8, 0, '', 0, 0, 0, '', 'Sniff 04-33-55: 189055 click if 70122 incomplete'),
(18, 193707, 382063, 0, 0, 47, 0, 66101, 8, 0, '', 0, 0, 0, '', 'Sniff 04-33-55: 193707 click if 66101 incomplete');

-- Sniffed world spawns. GUIDs after 8000951.
DELETE FROM `creature` WHERE `guid` BETWEEN 8000952 AND 8000964;
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
-- Wild Coast beach CreateObject1 04:34:31
(8000952, 189022, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3676.77, -1898.5764, 7.736508, 0.371056646108627319, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q87562_toddy_beach', 69587),
(8000953, 189035, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3678.1128, -1901.1146, 7.733724, 0.911005616188049316, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70123_azurathel_beach', 69587),
(8000954, 189021, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3676.462, -1895.7986, 7.7369504, 5.784096240997314453, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70124_thaelin_beach', 69587),
-- Archivist Rellid CreateObject1 04:38:32 npcflag SPELLCLICK
(8000963, 189055, 2444, 13644, 13722, '0', 0, 0, 0, -1, 0, 0, 3455.1995, -1957.94, 24.028889, 2.998877763748168945, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70122_rellid', 69587),
-- Wingrest Embassy CreateObject1 04:43:59-04:46:04
(8000955, 187252, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3541.6667, -1469.2726, 94.69766, 1.511820554733276367, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70123_azurathel_embassy', 69587),
(8000956, 189058, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3544.2666, -1447.8663, 92.917595, 0.601542055606842041, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70124_thaelin_embassy', 69587),
(8000957, 184449, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3534.2917, -1467.7153, 93.71737, 1.512264847755432128, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q67053_garrick', 69587),
(8000958, 184452, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3612.698, -1438.4392, 95.574585, 2.857669830322265625, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q67053_breka', 69587),
(8000959, 187257, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3590.981, -1397.1423, 99.1163, 5.382963180541992187, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q66101_aster', 69587),
(8000960, 187261, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3529.677, -1437.7188, 92.90278, 3.46657419204711914, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q66112_grun', 69587),
(8000961, 192055, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3602.611, -1395.8195, 100.39148, 1.276420116424560546, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q70029_veeno', 69587),
(8000962, 192438, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3539.9602, -1441.9427, 92.927124, 4.773675918579101562, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q69965_haephesta', 69587),
(8000964, 193707, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3586.4749, -1401.7413, 98.27002, 3.281219005584716796, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q66101_surveyor_disc', 69587);

DELETE FROM `gameobject` WHERE `guid` = 8000951;
INSERT INTO `gameobject`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`,
 `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
 `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
-- Protodragon Rib Cage CreateObject1 04:34:31 Stationary 3588.0642,-2014.2916,11.628608
(8000951, 379137, 2444, 13644, 13722, '0', 0, 0, 0, -1, 3588.0642, -2014.2916, 11.628608, 4.241153, 0.010648727, 0.0937109, -0.8465662, 0.5238612, 120, 255, 1, '', 'q70122_rib_cage', 69587);

-- Starters / enders from the sniff. 87547 on 238913 already set in 2026_09_04_11.
DELETE FROM `creature_queststarter` WHERE `quest` IN (87562, 70123, 70122, 70124, 67053, 66101, 70135, 69965, 66112, 70029);
DELETE FROM `creature_questender` WHERE `quest` IN (87555, 87562, 70123, 70124, 67053, 66101, 70135, 66112);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(238913, 87562, 69587),
(189035, 70123, 69587),
(189022, 70122, 69587),
(189021, 70124, 69587),
(184449, 67053, 69587),
(187257, 66101, 69587),
(184452, 70135, 69587),
(192438, 69965, 69587),
(187261, 66112, 69587),
(192055, 70029, 69587);

INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(238913, 87555, 69587),
(189022, 87562, 69587),
(187252, 70123, 69587),
(189058, 70124, 69587),
(184452, 67053, 69587),
(187257, 66101, 69587),
(184452, 70135, 69587),
(187261, 66112, 69587);

INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(87562, 87555),
(70122, 87562),
(70123, 87562),
(70124, 87562)
ON DUPLICATE KEY UPDATE `PrevQuestID` = VALUES(`PrevQuestID`);
