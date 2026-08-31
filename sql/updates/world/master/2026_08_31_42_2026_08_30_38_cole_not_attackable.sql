-- World Cole/Throg are questgivers only. They must never be the spar target.
-- Sparring rows on 160664/166583 made the deck NPC fightable.
SET NAMES utf8mb4;

DELETE FROM `world`.`creature_template_sparring` WHERE `Entry` IN (160664, 166583);

UPDATE `world`.`creature_template`
SET `faction` = 1732, `unit_flags` = 0, `npcflag` = `npcflag` | 2
WHERE `entry` = 160664;

UPDATE `world`.`creature_template`
SET `faction` = 2361, `unit_flags` = 0, `npcflag` = `npcflag` | 2
WHERE `entry` = 166583;
