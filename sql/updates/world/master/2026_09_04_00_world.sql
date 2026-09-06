-- Exile's Reach Alliance harpy hub after Stocking Up (55194).
-- Starters/enders = spawned NPCs that already match Wowhead roles/locations.
-- No new phases, GUIDs, or coordinates. Cole untouched.
SET NAMES utf8mb4;

-- 55196 The Harpy Problem: Henry at populated camp -> Henry at harpy roost
-- 55763 Rescue of Meredy: Henry at roost (Meredy 153211 has no world spawn)
-- 55764 Harpy Culling: Kee-La at roost
-- 55881 Purge the Totems: Henry at roost
-- 55882 Message to Base: Henry at roost -> camp questgiver 156807
--   (TDB places Jaina 156807 at the populated camp, not Captain Garrick 156651)

DELETE FROM `creature_queststarter` WHERE `quest` IN (55196, 55763, 55764, 55881, 55882);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(156833, 55196, 0),
(156859, 55763, 0),
(156860, 55764, 0),
(156859, 55881, 0),
(156859, 55882, 0);

DELETE FROM `creature_questender` WHERE `quest` IN (55196, 55763, 55764, 55881, 55882);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(156859, 55196, 0),
(156859, 55763, 0),
(156860, 55764, 0),
(156859, 55881, 0),
(156807, 55882, 0);

INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(55196, 55194),
(55763, 55196),
(55764, 55196),
(55881, 55196)
ON DUPLICATE KEY UPDATE `PrevQuestID` = VALUES(`PrevQuestID`);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` IN (19, 20) AND `SourceEntry` = 55882
  AND `Comment` LIKE 'Message to Base:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(19,0,55882,0,0,8,0,55763,0,0,'',0,0,0,'','Message to Base: Rescue of Meredy rewarded'),
(19,0,55882,0,0,8,0,55764,0,0,'',0,0,0,'','Message to Base: Harpy Culling rewarded'),
(19,0,55882,0,0,8,0,55881,0,0,'',0,0,0,'','Message to Base: Purge the Totems rewarded'),
(20,0,55882,0,0,8,0,55763,0,0,'',0,0,0,'','Message to Base mark: Rescue of Meredy rewarded'),
(20,0,55882,0,0,8,0,55764,0,0,'',0,0,0,'','Message to Base mark: Harpy Culling rewarded'),
(20,0,55882,0,0,8,0,55881,0,0,'',0,0,0,'','Message to Base mark: Purge the Totems rewarded');
