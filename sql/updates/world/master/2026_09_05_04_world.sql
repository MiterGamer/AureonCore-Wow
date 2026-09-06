-- Exile's Reach Abandoned Camp: match warcraft.wiki.gg (Patch 11.2.7).
-- 54952 Finding the Lost Expedition: start Jaina 156626, end Captain Garrick 156651.
-- 55174 Cooking Meat: start Garrick 156651, end Alaria 156607.
-- Horde mirror: 59931 Thrall -> Grimaxe 166906, 59932 Grimaxe -> Won'sa 166854.
-- Alaria/Won'sa spawns unchanged. No new GUIDs or coordinates.
SET NAMES utf8mb4;

-- Alliance: 54952 is turned in at camp Garrick, not injured Alaria.
DELETE FROM `creature_questender` WHERE `id` = 156607 AND `quest` = 54952;
INSERT IGNORE INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(156651, 54952, 69587);

-- Horde: 59931 is turned in at Grimaxe, not injured Won'sa.
DELETE FROM `creature_questender` WHERE `id` = 166854 AND `quest` = 59931;
INSERT IGNORE INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(166906, 59931, 69587);

-- Cooking Meat only after Finding the Lost Expedition (wiki Previous).
UPDATE `quest_template_addon` SET `PrevQuestID` = 54952 WHERE `ID` = 55174 AND `PrevQuestID` = 0;
UPDATE `quest_template_addon` SET `PrevQuestID` = 59931 WHERE `ID` = 59932 AND `PrevQuestID` = 0;
