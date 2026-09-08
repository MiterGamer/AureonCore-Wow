-- Aureon Core 0.2.3 login crash: provision missing seasonal character-state tables.
-- CREATE IF NOT EXISTS only; no player rows copied, deleted or overwritten.
-- MariaDB-compatible collation; DDL commits implicitly.
CREATE TABLE IF NOT EXISTS `character_mythic_plus` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `challengeModeId` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'MapChallengeMode.db2 ID',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Keystone level of the best run',
  `durationMs` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Effective run time in milliseconds (incl. death penalty)',
  `deaths` int(10) unsigned NOT NULL DEFAULT 0,
  `completionDate` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Unix time of the run',
  `score` float NOT NULL DEFAULT 0,
  `affix1` int(10) unsigned NOT NULL DEFAULT 0,
  `affix2` int(10) unsigned NOT NULL DEFAULT 0,
  `affix3` int(10) unsigned NOT NULL DEFAULT 0,
  `affix4` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`challengeModeId`),
  CONSTRAINT `fk_character_mythic_plus_character` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mythic Keystone best runs';

CREATE TABLE IF NOT EXISTS `character_mythic_plus_weekly` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `challengeModeId` int(10) unsigned NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `timed` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Run beat the par time',
  `completionDate` bigint(20) NOT NULL DEFAULT 0,
  `resetTime` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Weekly reset boundary these runs belong to',
  PRIMARY KEY (`id`),
  KEY `idx_guid` (`guid`),
  CONSTRAINT `fk_character_mythic_plus_weekly_guid` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Per-character Mythic+ runs completed this Great Vault week';

CREATE TABLE IF NOT EXISTS `character_mythic_plus_runs` (
  `guid` int(10) unsigned NOT NULL,
  `season` int(10) unsigned NOT NULL,
  `map_challenge_mode_id` int(10) unsigned NOT NULL,
  `best_level` int(10) unsigned NOT NULL DEFAULT 0,
  `best_duration_ms` int(10) unsigned NOT NULL DEFAULT 0,
  `best_score` float NOT NULL DEFAULT 0,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`season`,`map_challenge_mode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_mythic_plus_vault` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `claimedResetTime` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Weekly reset boundary the vault reward was claimed for',
  `keystoneResetTime` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Weekly reset boundary the keystone was last adjusted for',
  `prevWeekResetTime` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Weekly reset boundary the summarised previous week ended at',
  `prevWeekBestLevel` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Highest keystone level completed in that week (timed or not)',
  `prevWeekBestTimedLevel` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Highest keystone level completed IN TIME in that week',
  PRIMARY KEY (`guid`),
  CONSTRAINT `fk_character_mythic_plus_vault_guid` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Per-character Great Vault weekly claim state';

CREATE TABLE IF NOT EXISTS `character_weekly_rewards` (
  `guid` int(10) unsigned NOT NULL,
  `period` int(10) unsigned NOT NULL COMMENT 'weeks since Cfg_Regions.ChallengeOrigin',
  `dungeon_count` int(10) unsigned NOT NULL DEFAULT 0,
  `raid_count` int(10) unsigned NOT NULL DEFAULT 0,
  `pvp_count` int(10) unsigned NOT NULL DEFAULT 0,
  `best_dungeon_level` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_weekly_reward_activity` (
  `guid` bigint(20) unsigned NOT NULL,
  `period` int(10) unsigned NOT NULL DEFAULT 0,
  `activity_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `activity_id` int(10) unsigned NOT NULL DEFAULT 0,
  `progress` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`,`period`,`activity_type`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_weekly_reward_claim` (
  `guid` bigint(20) unsigned NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `reward_type` tinyint(3) unsigned NOT NULL,
  `threshold` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`period`,`reward_type`,`threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_weekly_reward_state` (
  `ownerGuid` bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `claimedPeriod` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Last weekly period a reward was claimed',
  PRIMARY KEY (`ownerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

CREATE TABLE IF NOT EXISTS `character_perks_program` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Character GUID',
  `period` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Weekly period for this balance',
  `currency` int(11) NOT NULL DEFAULT 0 COMMENT 'Current Traders Tender balance',
  PRIMARY KEY (`guid`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Perks Program player currency';

CREATE TABLE IF NOT EXISTS `character_perks_purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Character GUID',
  `vendor_item_id` int(11) NOT NULL COMMENT 'Purchased VendorItemID',
  `purchase_time` int(10) unsigned NOT NULL COMMENT 'Unix timestamp of purchase',
  `refundable` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '1 = can still be refunded',
  PRIMARY KEY (`id`),
  KEY `idx_guid` (`guid`),
  KEY `idx_guid_vendor` (`guid`,`vendor_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Perks Program purchase history';

CREATE TABLE IF NOT EXISTS `character_perks_completed_milestones` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Character GUID',
  `activity_id` int(11) NOT NULL COMMENT 'PerksActivity ID (from rotation-specific XInterval)',
  `completed_time` int(10) unsigned NOT NULL COMMENT 'Unix timestamp when completed',
  PRIMARY KEY (`guid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Perks Program completed threshold milestone activities per player';

CREATE TABLE IF NOT EXISTS `character_perks_frozen` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Character GUID',
  `vendor_item_id` int(11) NOT NULL COMMENT 'Frozen VendorItemID',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Perks Program frozen vendor item per character';

CREATE TABLE IF NOT EXISTS `character_perks_tracked_activities` (
  `guid` int(10) unsigned NOT NULL,
  `activity_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`activity_id`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `character_currency_transfer_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `unix_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
