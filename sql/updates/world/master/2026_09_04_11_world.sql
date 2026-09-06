-- Exile's Reach Darkmaul chain from retail 12.1 sniff
-- dump_12.1.0.69587_2026-09-04_19-16-21
-- Mage 59354 gossip 25321/51802 + dummy 168372 (spell 321148).
-- Ruins Jaina 245397 turns in 56344 and starts 55981.
-- Meredy 156943 gossip 24550/50819 applies ogre disguise 298241 / 313583.
-- Inner hub 156961/245667/156942, Kelra 156954/156965, catapults 326651, runes 339865.
-- Post-dungeon Kalecgos 244389 / 156501 / 238913.
-- Cole / 160664 / 13753 untouched. No invented coordinates.
SET NAMES utf8mb4;

-- 12.1 npcflags from CreateObject1
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (245397, 156961, 245667, 156965, 245686, 238913);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1 WHERE `entry` IN (244389, 156501, 156943);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 3 WHERE `entry` = 156886;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_meredy_huntswell_camp' WHERE `entry` = 156886;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_alliance_mage_polymorph_dummy' WHERE `entry` = 168372;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_meredy_huntswell_ogre' WHERE `entry` = 156943;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_kalecgos_exiles_reach' WHERE `entry` = 244389;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_kalecgos_darkmaul_leave' WHERE `entry` = 156501;

-- 59354: sniffed gossip replaces the leftover ice-mote as option 0 while the quest is incomplete.
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 25321 AND `GossipOptionID` = 51802;
INSERT INTO `gossip_menu_option`
(`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`,
 `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`,
 `SpellID`, `OverrideIconID`, `VerifiedBuild`)
VALUES
(25321, 51802, 0, 0, 'I''m ready to practice Polymorph.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 0);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 25321 AND `OptionID` = 0 AND `Locale` = 'deDE';
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(25321, 0, 'deDE', 'Ich bin bereit, ''Verwandlung'' zu üben.', NULL);

UPDATE `gossip_menu_option` SET `Flags` = 1 WHERE `MenuID` = 24550 AND `GossipOptionID` = 50819;

-- 244389 Dragon Isles gossip (sniff 19:41:08)
DELETE FROM `gossip_menu` WHERE `MenuID` = 39219;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(39219, 0, 0);

DELETE FROM `creature_template_gossip` WHERE `CreatureID` = 244389;
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(244389, 39219, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 39219;
INSERT INTO `gossip_menu_option`
(`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`,
 `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`,
 `SpellID`, `OverrideIconID`, `VerifiedBuild`)
VALUES
(39219, 133763, 0, 0, 'Take me to the Dragon Isles and tell me what is happening there.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 0);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 39219 AND `OptionID` = 0 AND `Locale` = 'deDE';
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(39219, 0, 'deDE', 'Bringt mich zu den Dracheninseln und sagt mir, was dort passiert.', NULL);

-- 156501 leave Darkmaul (sniff 19:40:26, spell 319030)
DELETE FROM `gossip_menu` WHERE `MenuID` = 39497;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(39497, 0, 0);

DELETE FROM `creature_template_gossip` WHERE `CreatureID` = 156501;
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(156501, 39497, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 39497;
INSERT INTO `gossip_menu_option`
(`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`,
 `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`,
 `SpellID`, `OverrideIconID`, `VerifiedBuild`)
VALUES
(39497, 134083, 0, 0, 'I''m ready to get out of this citadel.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, 319030, NULL, 0),
(39497, 134085, 1, 0, 'Tell me what it means to be an Aspect of the blue dragonflight.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 0);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 39497 AND `OptionID` IN (0, 1) AND `Locale` = 'deDE';
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(39497, 0, 'deDE', 'Ich bin bereit, aus dieser Zitadelle zu verschwinden.', NULL),
(39497, 1, 'deDE', 'Erzählt mir, was es bedeutet, ein Aspekt des blauen Drachenschwarms zu sein.', NULL);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (25321, 24550, 39219, 39497)
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,25321,0,0,0,47,0,59354,8,0,'',0,0,0,'','Sniff 19-16-21: Polymorph gossip if 59354 incomplete'),
(15,25321,1,0,0,47,0,59354,8,0,'',1,0,0,'','Sniff 19-16-21: hide ice mote while 59354 incomplete'),
(15,24550,0,0,0,47,0,55981,8,0,'',0,0,0,'','Sniff 19-16-21: ogre transform gossip if 55981 incomplete'),
(15,39219,0,0,0,47,0,55991,8,0,'',0,0,0,'','Sniff 19-16-21: Kalecgos Dragon Isles gossip if 55991 incomplete'),
(15,39497,0,0,0,47,0,55992,8,0,'',0,0,0,'','Sniff 19-16-21: leave Darkmaul gossip if 55992 incomplete');

-- Phase 13334 = ogre disguise. Phase 13839 = inner citadel after 55981 is taken.
DELETE FROM `phase_area` WHERE `PhaseId` IN (13334, 13839) AND `AreaId` = 10424;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(10424, 13334, 'Ogre disguise in Darkmaul Citadel'),
(10424, 13839, 'Alliance heroes inside Darkmaul Citadel');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` IN (13334, 13839) AND `SourceEntry` = 10424
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(26,13334,10424,0,0,1,0,298241,0,0,'',0,0,0,'','Sniff 19-16-21: phase 13334 while ogre disguise 298241 is active'),
(26,13839,10424,0,0,47,0,55981,74,0,'',0,0,0,'','Sniff 19-16-21: phase 13839 if 55981 in progress | complete | rewarded');

-- Named ogres already spawn; they had quest items in creature_questitem but no loot.
UPDATE `creature_template_difficulty` SET `LootID` = 153581 WHERE `Entry` = 153581;
UPDATE `creature_template_difficulty` SET `LootID` = 153582 WHERE `Entry` = 153582;
UPDATE `creature_template_difficulty` SET `LootID` = 153583 WHERE `Entry` = 153583;

DELETE FROM `creature_loot_template` WHERE `Entry` IN (153581, 153582, 153583) AND `Item` IN (168599, 168600, 168601);
INSERT INTO `creature_loot_template`
(`Entry`, `ItemType`, `Item`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(153583, 0, 168599, 100, 1, 1, 0, 1, 1, 'Jugnug - Jugnug''s Ward Stone'),
(153582, 0, 168600, 100, 1, 1, 0, 1, 1, 'Wug - Wug''s Ward Stone'),
(153581, 0, 168601, 100, 1, 1, 0, 1, 1, 'Grunk - Grunk''s Ward Stone');

-- Sniffed creature spawns. GUIDs after 8000933.
DELETE FROM `creature` WHERE `guid` BETWEEN 8000934 AND 8000942;
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
-- 245397 ruins Jaina (19:22:13, npcflag 2, area 10568)
(8000934, 245397, 2175, 10424, 10568, '0', 0, 13840, 0, -1, 0, 0, 317.25522, -2172.2432, 106.06519, 0.81894, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q56344_jaina_ruins', 0),
-- 156961 inner Jaina (19:24:15, npcflag 2)
(8000935, 156961, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 703.908, -1876.6389, 186.96567, 1.18269, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55981_jaina_inner', 0),
-- 245667 inner Garrick (19:24:15, npcflag 2)
(8000936, 245667, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 697.8333, -1877.5625, 186.59119, 0.99581, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55989_garrick_inner', 0),
-- 156942 inner Henry (19:24:15, extra spawn)
(8000937, 156942, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 706.32465, -1882.757, 186.59119, 1.29611, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55988_henry_inner', 0),
-- 156954 chained Kelra (19:24:05)
(8000938, 156954, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 708.77954, -1868.8281, 189.18108, 4.46616, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55990_kelra_chained', 0),
-- 156965 free Kelra (19:26:23, npcflag 2)
(8000939, 156965, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 708.691, -1868.7935, 186.70596, 4.46616, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55990_kelra_free', 0),
-- 245686 post-dungeon Jaina (19:38:56, npcflag 2)
(8000940, 245686, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 712.3785, -1859.5087, 186.9611, 4.24748, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55992_jaina_post', 0),
-- 244389 Kalecgos on Exile's Reach (19:38:56, npcflag 1)
(8000941, 244389, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 0, 0, 706.9167, -1870.1493, 186.96568, 1.27560, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55991_kalecgos_er', 0),
-- 238913 Kalecgos on map 2444 (19:42:18, npcflag 2)
(8000942, 238913, 2444, 13646, 13646, '0', 0, 0, 0, -1, 0, 0, 3698.5842, -1886.4149, 4.4755287, 6.03832, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q87547_kalecgos_2444', 0);

-- Sniffed catapults + Kelra runes (CreateObject1 19:22:14 / 19:24:05). Phase 0: visible in disguise and after.
DELETE FROM `gameobject` WHERE `guid` BETWEEN 8000943 AND 8000949;
INSERT INTO `gameobject`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`,
 `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`,
 `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
(8000943, 326651, 2175, 10424, 10530, '0', 0, 0, 0, -1, 463.7795, -1997.0817, 143.71286, 0, 0, 0, 0, 1, 120, 255, 1, '', 'q55989_catapult_1', 0),
(8000944, 326651, 2175, 10424, 10530, '0', 0, 0, 0, -1, 610.73267, -2118.4167, 158.92596, 1, 0, 0, 0, 1, 120, 255, 1, '', 'q55989_catapult_2', 0),
(8000945, 326651, 2175, 10424, 10530, '0', 0, 0, 0, -1, 535.9757, -2085.5469, 158.32097, 2, 0, 0, 0, 1, 120, 255, 1, '', 'q55989_catapult_3', 0),
(8000946, 326651, 2175, 10424, 10530, '0', 0, 0, 0, -1, 489.86978, -2051.573, 143.9427, 3, 0, 0, 0, 1, 120, 255, 1, '', 'q55989_catapult_4', 0),
(8000947, 339865, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 701.96704, -1868.9618, 186.50786, 2, 0, 0, 0, 1, 120, 255, 1, '', 'q55990_rune_1', 0),
(8000948, 339865, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 711.09894, -1862.1945, 186.50786, 4, 0, 0, 0, 1, 120, 255, 1, '', 'q55990_rune_2', 0),
(8000949, 339865, 2175, 10424, 10530, '0', 0, 13839, 0, -1, 713.04517, -1873.5209, 186.38033, 6, 0, 0, 0, 1, 120, 255, 1, '', 'q55990_rune_3', 0);

-- Starters / enders from the sniff. 56344 turn-in is 245397, not ambient 156941.
DELETE FROM `creature_questender` WHERE `quest` = 56344 AND `id` = 156941;
DELETE FROM `creature_queststarter` WHERE `quest` IN (55981, 55988, 55989, 55990, 55991, 55992, 87547);
DELETE FROM `creature_questender` WHERE `quest` IN (56344, 55981, 55988, 55989, 55990, 55991, 55992, 87547);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(245397, 55981, 0),
(156942, 55988, 0),
(245667, 55989, 0),
(156961, 55990, 0),
(156965, 55992, 0),
(245686, 55991, 0),
(238913, 87547, 0);

INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(245397, 56344, 0),
(156961, 55981, 0),
(156942, 55988, 0),
(245667, 55989, 0),
(156965, 55990, 0),
(245686, 55992, 0),
(238913, 87547, 0);
