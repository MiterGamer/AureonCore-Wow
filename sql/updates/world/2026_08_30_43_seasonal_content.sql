-- Mythic+ weekly affix rotation and Great Vault thresholds.
-- Empty affix table: core fills current affixes from KeystoneAffix.db2.

CREATE TABLE IF NOT EXISTS `mythic_plus_affix_rotation` (
  `week_index` TINYINT UNSIGNED NOT NULL COMMENT '0-11, wraps with vault week',
  `slot` TINYINT UNSIGNED NOT NULL COMMENT '0-3 display order',
  `affix_id` INT UNSIGNED NOT NULL COMMENT 'KeystoneAffix.db2 ID',
  PRIMARY KEY (`week_index`, `slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `weekly_reward_threshold` (
  `type` TINYINT UNSIGNED NOT NULL COMMENT '0 raid, 1 dungeon/M+, 2 PvP',
  `threshold` INT UNSIGNED NOT NULL,
  `item_id` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`, `threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `weekly_reward_threshold` (`type`, `threshold`, `item_id`) VALUES
(0, 2, 0),
(0, 4, 0),
(0, 6, 0),
(1, 1, 0),
(1, 4, 0),
(1, 8, 0),
(2, 1250, 0),
(2, 2500, 0),
(2, 6250, 0)
ON DUPLICATE KEY UPDATE `threshold` = VALUES(`threshold`);
