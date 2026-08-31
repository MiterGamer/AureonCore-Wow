-- Exile's Reach class skill questgivers vs Wowhead / warcraft.wiki.gg
-- Backup: sql/backups/2026_08_30_class_skill_questgivers.sql
SET NAMES utf8mb4;

-- Alliance Paladin 58923: Private Cole starts (same as Warrior/Rogue/Priest/Warlock intros)
INSERT IGNORE INTO `world`.`creature_queststarter` (`id`, `quest`, `VerifiedBuild`)
VALUES (156801, 58923, 0);

-- Alliance Hunter 59342: Austin Huxworth only, not Captain Garrick
DELETE FROM `world`.`creature_queststarter`
WHERE `id` = 156651 AND `quest` = 59342;

-- Horde Hunter 59937: Mithdran at Abandoned Camp starts; both camp phases can end
-- (mirrors Alliance 59342: Austin 154327 starts, 154327 + 161666 end)
INSERT IGNORE INTO `world`.`creature_queststarter` (`id`, `quest`, `VerifiedBuild`)
VALUES (166996, 59937, 0);

INSERT IGNORE INTO `world`.`creature_questender` (`id`, `quest`, `VerifiedBuild`)
VALUES
  (166996, 59937, 0),
  (167215, 59937, 0);

-- Horde Shaman 59969: same Ghost Wolf as Alliance 59002
INSERT IGNORE INTO `world`.`creature_queststarter` (`id`, `quest`, `VerifiedBuild`)
VALUES (163329, 59969, 0);

INSERT IGNORE INTO `world`.`creature_questender` (`id`, `quest`, `VerifiedBuild`)
VALUES (163329, 59969, 0);
