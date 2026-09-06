-- Exile's Reach camp + harpy hub from retail 12.1 sniff
-- dump_12.1.0.69587_2026-09-04_17-00-16
-- Camp giver is 245394 Captain Garrick (not Jaina 156807).
-- Repair Yourself 85678 credits 156800 via CMSG_REPAIR_ITEM.
-- Rescue of Meredy 55763: ritual 153211 gossip 24887/49526, kill 153964, turn-in 156882.
-- Cole / 160664 / 13753 untouched. No invented coordinates.
SET NAMES utf8mb4;

-- 12.1 camp Garrick is a questgiver. Ritual Meredy already has gossip. Roost Meredy turns in 55763.
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` = 245394;
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` = 156882;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_meredy_huntswell_ritual' WHERE `entry` = 153211;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_bloodbeak_harpy_roost' WHERE `entry` = 153964;
-- Sniffed FactionTemplate 14 on the gossip-summoned ambusher.
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 155192;

-- TDB texts already match the sniff lines; attach BroadcastText so deDE localizes.
UPDATE `creature_text` SET `BroadcastTextId` = 177026 WHERE `CreatureID` = 153211 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `BroadcastTextId` = 177088 WHERE `CreatureID` = 153211 AND `GroupID` = 1 AND `ID` = 0;

UPDATE `gossip_menu_option` SET `Flags` = 1 WHERE `MenuID` = 24887 AND `GossipOptionID` = 49526;

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 24887 AND `SourceEntry` = 0
  AND `Comment` LIKE 'Rescue of Meredy:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,24887,0,0,0,47,0,55763,8,0,'',0,0,0,'','Rescue of Meredy: ritual gossip if quest is incomplete');

-- Bloodbeak stays airborne at the sniffed hover point.
DELETE FROM `creature_template_movement` WHERE `CreatureId` = 153964;
INSERT INTO `creature_template_movement` (`CreatureId`, `HoverInitiallyEnabled`) VALUES
(153964, 1);

-- Sniffed spawns. GUIDs after MAX 8000929.
DELETE FROM `creature` WHERE `guid` IN (8000930, 8000931, 8000932, 8000933);
INSERT INTO `creature`
(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`,
 `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
 `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`,
 `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `ScriptName`, `StringId`, `VerifiedBuild`)
VALUES
-- 245394 camp Garrick (17:02:56, npcflag 2, area 10529)
(8000930, 245394, 2175, 10424, 10529, '0', 0, 13794, 0, -1, 0, 0, 179.73611, -2285.6997, 81.931755, 0.9936105, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q_camp_garrick_245394', 0),
-- 153211 ritual Meredy (17:08:15, npcflag 1)
(8000931, 153211, 2175, 10424, 10528, '0', 0, 13811, 0, -1, 0, 0, 495.41147, -2354.5642, 163.20782, 4.6382723, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55763_meredy_ritual', 0),
-- 153964 Bloodbeak hover (17:05:37, PlayHoverAnim, DisableGravity)
(8000932, 153964, 2175, 10424, 10528, '0', 0, 13811, 0, -1, 0, 0, 490.97025, -2423.2625, 174.13655, 1.5158213, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55763_bloodbeak', 0),
-- 156882 roost Meredy after rescue (17:11:29, npcflag 2)
(8000933, 156882, 2175, 10424, 10528, '0', 0, 13811, 0, -1, 0, 0, 393.21875, -2442.9307, 125.913445, 2.7876916, 120, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 'q55763_meredy_roost', 0);

-- Sniffed camp Jaina 156807 is ambient (npcflag 0), not the 12.1 questgiver.
UPDATE `creature` SET `npcflag` = 0 WHERE `guid` = 8000044 AND `id` = 156807;

-- Starters/enders from the sniff. 56344 stays on camp Garrick so the ! is not on ambient Jaina.
DELETE FROM `creature_queststarter` WHERE `quest` IN (85678, 56344);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(245394, 85678, 0),
(245394, 56344, 0);

DELETE FROM `creature_questender` WHERE `quest` IN (55639, 85678, 55763, 55882);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(245394, 55639, 0),
(245394, 85678, 0),
(156882, 55763, 0),
(245394, 55882, 0);
