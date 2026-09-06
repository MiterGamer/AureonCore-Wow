-- Exile's Reach NPC ! / ? markers.
-- Starter/ender rows = Wowhead/wiki roles on already spawned NPCs.
-- Phase 15354 already sits on Bo's spawn; TDB never granted it to the player.
-- Cole / 160664 / 13753 untouched. No new GUIDs or coordinates.
SET NAMES utf8mb4;

-- Questgiver flag on Herbert templates (ender/class trainer after rescue).
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (167182, 167309);

-- Alliance: A Mage's Knowledge / The Best Way to Use Sheep (Meredy at camp, phase 13836)
-- Alliance: Repair Yourself (camp Garrick/Jaina 156807; Horde already uses Thrall 167212)
-- Alliance: To Darkmaul Citadel (camp 156807 -> Garrick 156941, phase 13840)
-- Horde harpy hub (mirror of 2026_09_04_00):
--   59943 Shuja lookout 167219 -> Bo roost 167291
--   59944/59945/59946/59947 Bo at roost (Herbert 167182 has no world spawn)
-- Horde: Who Lurks in the Pit (Lana 167225 at the pit, same spawn as Alliance Alaria)
DELETE FROM `creature_queststarter` WHERE `quest` IN (59352, 59354, 85678, 56344, 59943, 59944, 59945, 59946, 59947, 59949);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(156886, 59352, 0),
(156886, 59354, 0),
(156807, 85678, 0),
(156807, 56344, 0),
(167219, 59943, 0),
(167291, 59944, 0),
(167291, 59945, 0),
(167291, 59946, 0),
(167291, 59947, 0),
(167225, 59949, 0);

DELETE FROM `creature_questender` WHERE `quest` IN (59352, 59354, 85678, 56344, 59943, 59944, 59945, 59946, 59947, 59949);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(156886, 59352, 0),
(156886, 59354, 0),
(156807, 85678, 0),
(156941, 56344, 0),
(167291, 59943, 0),
(167291, 59944, 0),
(167291, 59945, 0),
(167291, 59946, 0),
(167212, 59947, 0),
(167212, 59949, 0);

INSERT INTO `quest_template_addon` (`ID`, `AllowableClasses`, `PrevQuestID`) VALUES
(59352, 128, 55882),
(59354, 128, 59352),
(85678, 0, 55639),
(85679, 0, 59949),
(59943, 0, 59950),
(59944, 0, 59943),
(59945, 0, 59943),
(59946, 0, 59943),
(59949, 0, 59948)
ON DUPLICATE KEY UPDATE
    `AllowableClasses` = VALUES(`AllowableClasses`),
    `PrevQuestID` = VALUES(`PrevQuestID`);

-- Message to Base (Horde) after the three roost quests, same as Alliance 55882.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` IN (19, 20) AND `SourceEntry` IN (59947, 56344)
  AND (`Comment` LIKE 'Message to Base:%' OR `Comment` LIKE 'To Darkmaul Citadel:%');
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(19,0,59947,0,0,8,0,59944,0,0,'',0,0,0,'','Message to Base: Rescue of Herbert rewarded'),
(19,0,59947,0,0,8,0,59945,0,0,'',0,0,0,'','Message to Base: Harpy Culling rewarded'),
(19,0,59947,0,0,8,0,59946,0,0,'',0,0,0,'','Message to Base: Purge the Totems rewarded'),
(20,0,59947,0,0,8,0,59944,0,0,'',0,0,0,'','Message to Base mark: Rescue of Herbert rewarded'),
(20,0,59947,0,0,8,0,59945,0,0,'',0,0,0,'','Message to Base mark: Harpy Culling rewarded'),
(20,0,59947,0,0,8,0,59946,0,0,'',0,0,0,'','Message to Base mark: Purge the Totems rewarded'),
(19,0,56344,0,0,8,0,55639,0,0,'',0,0,0,'','To Darkmaul Citadel: Who Lurks in the Pit rewarded'),
(19,0,56344,0,0,8,0,55882,0,0,'',0,0,0,'','To Darkmaul Citadel: Message to Base rewarded'),
(20,0,56344,0,0,8,0,55639,0,0,'',0,0,0,'','To Darkmaul Citadel mark: Who Lurks in the Pit rewarded'),
(20,0,56344,0,0,8,0,55882,0,0,'',0,0,0,'','To Darkmaul Citadel mark: Message to Base rewarded');

-- Grant existing spawn phase 15354 (Bo at roost) the same way 13811 is granted for Henry.
DELETE FROM `phase_area` WHERE `PhaseId` = 15354 AND `AreaId` = 10424;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(10424, 15354, 'Cosmetic - NPE - See Bo at Harpy Roost');

DELETE FROM `phase_name` WHERE `ID` = 15354;
INSERT INTO `phase_name` (`ID`, `Name`) VALUES
(15354, 'Cosmetic - NPE - See Bo at Harpy Roost');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` IN (15354, 15353)
  AND `SourceEntry` = 10424
  AND (`Comment` LIKE '%Bo at Harpy Roost%' OR `Comment` LIKE '%Shuja Grimaxe at Ogre Ruins pre quest%');
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
-- Shuja lookout: hide after The Harpy Problem is taken (Alliance Henry 13809).
(26,15353,10424,0,0,47,0,59942,64,0,'',0,0,0,'','See Shuja Grimaxe at Ogre Ruins pre quest if quest The Re-Deather is rewarded'),
(26,15353,10424,0,0,47,0,59943,74,0,'',1,0,0,'','See Shuja Grimaxe at Ogre Ruins pre quest if quest The Harpy Problem is not taken | complete | rewarded'),
-- Bo roost hub while harpy quests are active (Alliance Henry 13811).
(26,15354,10424,0,0,47,0,59943,74,0,'',0,0,0,'','See Bo at Harpy Roost if quest The Harpy Problem is in progress | complete | rewarded'),
(26,15354,10424,0,0,47,0,59944,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest The Rescue of Herbert is not taken'),
(26,15354,10424,0,1,47,0,59943,74,0,'',0,0,0,'','See Bo at Harpy Roost if quest The Harpy Problem is in progress | complete | rewarded'),
(26,15354,10424,0,1,47,0,59945,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest Harpy Culling is not taken'),
(26,15354,10424,0,2,47,0,59946,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest Purge the Totems is not taken'),
(26,15354,10424,0,2,47,0,59943,74,0,'',0,0,0,'','See Bo at Harpy Roost if quest The Harpy Problem is in progress | complete | rewarded'),
(26,15354,10424,0,3,47,0,59947,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest Message to Base is not taken'),
(26,15354,10424,0,3,47,0,59944,66,0,'',0,0,0,'','See Bo at Harpy Roost if quest The Rescue of Herbert is complete | rewarded'),
(26,15354,10424,0,4,47,0,59947,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest Message to Base is not taken'),
(26,15354,10424,0,4,47,0,59945,66,0,'',0,0,0,'','See Bo at Harpy Roost if quest Harpy Culling is complete | rewarded'),
(26,15354,10424,0,5,47,0,59946,66,0,'',0,0,0,'','See Bo at Harpy Roost if quest Purge the Totems is complete | rewarded'),
(26,15354,10424,0,5,47,0,59947,1,0,'',0,0,0,'','See Bo at Harpy Roost if quest Message to Base is not taken');
