-- After Westward Bound (55965) turn-in at Hrun's Barrow, Alaria offers Who Lurks in the Pit.
-- Wowhead/wiki: start Alaria [51.1, 59.5] = spawned 156803 phase 13816; end camp questgiver.
-- TDB camp NPC is Jaina 156807 (same as 55194 / 55882), not Captain Garrick 156651.
SET NAMES utf8mb4;

DELETE FROM `creature_queststarter` WHERE `quest` = 55639;
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(156803, 55639, 0);

DELETE FROM `creature_questender` WHERE `quest` = 55639;
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(156807, 55639, 0);

INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(55639, 55965)
ON DUPLICATE KEY UPDATE `PrevQuestID` = VALUES(`PrevQuestID`);
