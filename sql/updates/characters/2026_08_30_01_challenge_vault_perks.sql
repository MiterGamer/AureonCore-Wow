CREATE TABLE IF NOT EXISTS `character_weekly_reward_claim` (
  `guid` BIGINT UNSIGNED NOT NULL,
  `period` INT UNSIGNED NOT NULL,
  `reward_type` TINYINT UNSIGNED NOT NULL,
  `threshold` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `period`, `reward_type`, `threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_perks_program` (
  `guid` BIGINT UNSIGNED NOT NULL,
  `period` INT UNSIGNED NOT NULL,
  `currency` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
