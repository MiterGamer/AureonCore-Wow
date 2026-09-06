-- Sniff dump_12.1.0.69587_2026-09-04_14-55-01: after 55879 reward
-- SMSG_PLAY_SCENE SceneID 2341 PlaybackFlags 17 SceneScriptPackageID 4778 Encrypted False
-- (not 4741, not leftover 2933 TEST IGC).
-- Horde 2497 has no sniff; restore TDB package 4779.
-- 55194 Stocking Up on Supplies: start and end Captain Garrick 245394
-- (wowpedia + sniff QuestGiverCreatureID 245394), not Jaina 156807.
SET NAMES utf8mb4;

UPDATE `scene_template` SET `ScriptPackageID` = 4778 WHERE `SceneId` = 2341 AND `ScriptPackageID` = 4741;
UPDATE `scene_template` SET `ScriptPackageID` = 4779 WHERE `SceneId` = 2497 AND `ScriptPackageID` = 4741;

DELETE FROM `creature_queststarter` WHERE `id` = 156807 AND `quest` = 55194;
DELETE FROM `creature_questender` WHERE `id` = 156807 AND `quest` = 55194;
INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(245394, 55194, 69587);
INSERT IGNORE INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(245394, 55194, 69587);
