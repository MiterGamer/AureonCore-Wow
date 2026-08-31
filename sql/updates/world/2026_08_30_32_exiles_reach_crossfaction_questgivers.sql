-- Exile's Reach: remove Alliance NPCs from Horde quests and fix 59946.
-- Backup: sql/backups/2026_08_30_er_crossfaction_questgivers.sql
--         sql/backups/2026_08_30_quest_59946_purge_totems.sql
SET NAMES utf8mb4;

-- Brace for Impact Alliance (58208): Private Cole only, not Thrall / Throg
DELETE FROM `world`.`creature_queststarter`
WHERE `quest` = 58208 AND `id` IN (166573, 166583);

-- Northbound Horde (59935): Won'sa only, not Alaria
DELETE FROM `world`.`creature_queststarter`
WHERE `quest` = 59935 AND `id` = 175031;

-- Northbound Horde ends at Mithdran, not Alliance Austin
DELETE FROM `world`.`creature_questender`
WHERE `quest` = 59935 AND `id` = 154327;

-- Horde quilboar pair: Mithdran starts, not Austin
DELETE FROM `world`.`creature_queststarter`
WHERE `quest` IN (59938, 59939) AND `id` = 154327;

-- Down with the Quilboar Horde ends at Cork, not Alliance Lindie
DELETE FROM `world`.`creature_questender`
WHERE `quest` = 59938 AND `id` = 149899;

-- Purge the Totems Horde was a copy of Alliance 55881
UPDATE `world`.`quest_template`
SET `AllowableRaces` = 690
WHERE `ID` = 59946;

UPDATE `world`.`quest_template_addon`
SET `PrevQuestID` = 59943, `NextQuestID` = 59947, `ExclusiveGroup` = -59945
WHERE `ID` = 59946;
