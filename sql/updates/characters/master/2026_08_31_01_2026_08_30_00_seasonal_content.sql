-- Weekly vault progress, Mythic+ best runs, currency transfer history.

CREATE TABLE IF NOT EXISTS `character_weekly_rewards` (
  `guid` INT UNSIGNED NOT NULL,
  `period` INT UNSIGNED NOT NULL COMMENT 'weeks since Cfg_Regions.ChallengeOrigin',
  `dungeon_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `raid_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `pvp_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `best_dungeon_level` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_weekly_reward_activity` (
  `guid` INT UNSIGNED NOT NULL,
  `period` INT UNSIGNED NOT NULL,
  `activity_type` TINYINT UNSIGNED NOT NULL COMMENT '0 raid, 1 dungeon, 2 pvp',
  `activity_id` INT UNSIGNED NOT NULL,
  `progress` INT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`, `period`, `activity_type`, `activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_mythic_plus_runs` (
  `guid` INT UNSIGNED NOT NULL,
  `season` INT UNSIGNED NOT NULL,
  `map_challenge_mode_id` INT UNSIGNED NOT NULL,
  `best_level` INT UNSIGNED NOT NULL DEFAULT 0,
  `best_duration_ms` INT UNSIGNED NOT NULL DEFAULT 0,
  `best_score` FLOAT NOT NULL DEFAULT 0,
  `completed` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `season`, `map_challenge_mode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_currency_transfer_log` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` INT UNSIGNED NOT NULL,
  `currency_id` INT UNSIGNED NOT NULL,
  `quantity` INT NOT NULL,
  `unix_time` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
