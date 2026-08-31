-- Cooking Meat (55174 / Grillfleisch): turn-in is Alaria (156607) only.
-- Captain Garrick (156651) is the starter, not the ender.
-- Horde 59932 is already Won'sa-only and is left unchanged.
-- Backup: sql/backups/2026_08_30_cooking_meat_enders.sql
SET NAMES utf8mb4;

DELETE FROM `world`.`creature_questender`
WHERE `id` = 156651 AND `quest` = 55174;
