-- Stormwind / Silithus / map 2698 / Broken Isles from sniff 04-33-55 (build 69587).
-- dump_12.1.0.69587_2026-09-05_04-33-55
-- Map hops without a sniffed gossip/spell stay unscripted.
-- Housing MirrorVars ignored. Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (221967, 214031, 212899);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 3 WHERE `entry` IN (213620, 213624, 213625, 213627, 214651, 214669);

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_magni_azeroths_voice' WHERE `entry` = 213624;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_brann_bronzebeard_family' WHERE `entry` = 214669;

-- Existing TDB gossip menus (sniff 05:09-05:18)
DELETE FROM `creature_template_gossip` WHERE `CreatureID` IN (213620, 213624, 213625, 213627, 214651, 214669);
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(213625, 33246, 69587),
(213620, 33839, 69587),
(213624, 33853, 69587),
(213627, 33252, 69587),
(214651, 34131, 69587),
(214669, 34132, 69587);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (33853, 34132)
  AND `Comment` LIKE 'Sniff 04-33-55:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15, 33853, 0, 0, 0, 47, 0, 78715, 8, 0, '', 0, 0, 0, '', 'Sniff 04-33-55: Magni begin gossip if 78715 incomplete'),
(15, 34132, 0, 0, 0, 47, 0, 80500, 8, 0, '', 0, 0, 0, '', 'Sniff 04-33-55: Brann portrait gossip if 80500 incomplete');

DELETE FROM `creature` WHERE `guid` BETWEEN 8000965 AND 8000974;
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
-- Stormwind CreateObject1 04:58:09
(8000965, 221967, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8835.67, 639.6858, 96.19994, 4.187781333923339843, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q81930_jaina_sw', 69587),
(8000966, 214031, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8868.509, 651.9792, 96.12599, 5.819826126098632812, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q79132_racing_enthusiast', 69587),
(8000967, 212899, 0, 1519, 5148, '0', 0, 0, 0, -1, 0, 0, -8828.674, 640.0417, 95.274086, 5.000516891479492187, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q78596_greyguard', 69587),
-- Kalimdor / Silithus CreateObject1 05:08:45
(8000968, 213620, 1, 9310, 9609, '0', 0, 0, 0, -1, 0, 0, -7091.955, 1280.3611, -93.392624, 1.176443934440612792, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q78714_thrall_silithus', 69587),
(8000969, 213625, 1, 9310, 9609, '0', 0, 0, 0, -1, 0, 0, -7093.655, 1281.7205, -93.328285, 1.273766994476318359, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q81930_jaina_silithus', 69587),
-- Map 2698 CreateObject1 05:09:58 / 05:10:25 (no TDB zone row)
(8000970, 213624, 2698, 0, 0, '0', 0, 0, 0, -1, 0, 0, -8358.071, 1754.7118, 314.95874, 3.32171487808227539, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q78714_magni_2698', 69587),
(8000971, 213625, 2698, 0, 0, '0', 0, 0, 0, -1, 0, 0, -8338.915, 1757.0955, 314.82184, 3.227116346359252929, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q78715_jaina_2698', 69587),
-- Broken Isles Dalaran CreateObject1 05:12:34 / 05:15:20
(8000972, 213627, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -849.07117, 4473.993, 588.9321, 5.48444366455078125, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q78716_khadgar', 69587),
(8000973, 214651, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -838.7222, 4480.6606, 588.9393, 2.829555273056030273, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q80500_moira', 69587),
(8000974, 214669, 1220, 7502, 7502, '0', 0, 0, 0, -1, 0, 0, -888.2917, 4455.6807, 737.6769, 3.474688053131103515, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q80500_brann', 69587);

DELETE FROM `creature_queststarter` WHERE `quest` IN (81930, 79132, 78596, 78714, 78715, 78716, 80500);
DELETE FROM `creature_questender` WHERE `quest` IN (81930, 78714, 78715, 78716, 80500);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(221967, 81930, 69587),
(214031, 79132, 69587),
(212899, 78596, 69587),
(213620, 78714, 69587),
(213624, 78715, 69587),
(213625, 78716, 69587),
(214651, 80500, 69587);

INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(213625, 81930, 69587),
(213624, 78714, 69587),
(213625, 78715, 69587),
(213627, 78716, 69587),
(214651, 80500, 69587);

INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(78714, 81930),
(78715, 78714),
(78716, 78715),
(80500, 78716)
ON DUPLICATE KEY UPDATE `PrevQuestID` = VALUES(`PrevQuestID`);
