-- Seasonal content (Mythic+ rotation, weekly reward thresholds, Trading Post catalog)
-- NOTE: Retail-accurate layout for the Trading Post lives in perks_monthly_rotation /
-- perks_vendor_items (PerksVendorItem.db2-shaped, incl. mount/pet/transmog/illusion ids).
-- These tables already exist on the live server - CREATE TABLE IF NOT EXISTS is a no-op
-- there, and no items are seeded so existing rotations are never overwritten.

-- Mythic+ affix rotation. One row per affix slot per week.
-- Week index 0 = the week that contains Cfg_Regions ChallengeOrigin.
-- A week with fewer than 4 slots is fine; an empty week falls back to KeystoneAffix.db2.
CREATE TABLE IF NOT EXISTS `mythic_plus_affix_rotation` (
  `week_index` tinyint(3) unsigned NOT NULL COMMENT '0-11, wraps with vault week',
  `slot` tinyint(3) unsigned NOT NULL COMMENT '0-3 display order',
  `affix_id` int(10) unsigned NOT NULL COMMENT 'KeystoneAffix.db2 ID',
  PRIMARY KEY (`week_index`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO `mythic_plus_affix_rotation` (`week_index`, `slot`, `affix_id`) VALUES
(0, 0, 9),       -- Tyrannical
(0, 1, 13),      -- Explosive
(0, 2, 14),      -- Bursting
(1, 0, 10),      -- Fortified
(1, 1, 7),       -- Bolstering
(1, 2, 8),       -- Sanguine
(2, 0, 9),       -- Tyrannical
(2, 1, 1120),    -- Quaking
(2, 2, 4),       -- Necrotic
(3, 0, 10),      -- Fortified
(3, 1, 11),      -- Raging
(3, 2, 3),       -- Volcanic
(4, 0, 9),       -- Tyrannical
(4, 1, 8),       -- Sanguine
(4, 2, 1123),    -- Grievous
(5, 0, 10),      -- Fortified
(5, 1, 13),      -- Explosive
(5, 2, 11),      -- Raging
(6, 0, 9),       -- Tyrannical
(6, 1, 7),       -- Bolstering
(6, 2, 4),       -- Necrotic
(7, 0, 10),      -- Fortified
(7, 1, 1120),    -- Quaking
(7, 2, 3),       -- Volcanic
(8, 0, 10),      -- Fortified
(8, 1, 8),       -- Sanguine
(8, 2, 1123),    -- Grievous
(9, 0, 9),       -- Tyrannical
(9, 1, 3),       -- Volcanic
(9, 2, 1120),    -- Quaking
(10, 0, 10),     -- Fortified
(10, 1, 7),      -- Bolstering
(10, 2, 13),     -- Explosive
(11, 0, 9),      -- Tyrannical
(11, 1, 8),      -- Sanguine
(11, 2, 14);     -- Bursting

-- Weekly vault reward thresholds per activity type.
-- type: 0 = Raid, 1 = Dungeon, 2 = Ranked PvP. item_id 0 = gold reward.
CREATE TABLE IF NOT EXISTS `weekly_reward_threshold` (
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 raid, 1 dungeon/M+, 2 PvP',
  `threshold` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`type`,`threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO `weekly_reward_threshold` (`type`, `threshold`, `item_id`) VALUES
(0, 2, 0),     -- Raid: 2 bosses
(0, 4, 0),     -- Raid: 4 bosses
(0, 6, 0),     -- Raid: 6 bosses
(1, 1, 0),     -- Dungeon: 1 dungeon
(1, 4, 0),     -- Dungeon: 4 dungeons
(1, 8, 0),     -- Dungeon: 8 dungeons
(2, 1250, 0),  -- Ranked PvP: 1250 rating
(2, 2500, 0),  -- Ranked PvP: 2500 rating
(2, 6250, 0);  -- Ranked PvP: 6250 rating

-- ---------------------------------------------------------------------------
-- Trading Post / Perks Program (retail-accurate) asset tables.
-- The server loads these in SeasonalContentMgr::LoadFromDB. Live data is kept.
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `perks_activity_intervals` (
  `interval_id` int(10) unsigned NOT NULL COMMENT 'IntervalID from PerksActivityXInterval.db2',
  `month_start` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: window open (0 = always)',
  `month_end` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: window close (INT_MAX = always)',
  `is_threshold` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0 = main activity list, 1 = trailing milestone slots',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`interval_id`,`month_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Perks Program activity interval schedule';

CREATE TABLE IF NOT EXISTS `perks_current_activities` (
  `activity_id` int(11) NOT NULL COMMENT 'PerksActivity ID from PerksActivity.db2',
  `is_threshold` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0 = main list, 1 = threshold milestone slot',
  `month_start` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: window open',
  `month_end` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: window close',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Perks Program direct activity list per Trading Post month';

CREATE TABLE IF NOT EXISTS `perks_monthly_rotation` (
  `rotation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `month_start` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: rotation start',
  `month_end` int(10) unsigned NOT NULL COMMENT 'Unix timestamp: rotation end',
  `vendor_item_id` int(11) NOT NULL COMMENT 'FK to perks_vendor_items.VendorItemID',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Human-readable label (e.g. August 2026)',
  PRIMARY KEY (`rotation_id`),
  KEY `idx_rotation_dates` (`month_start`,`month_end`),
  KEY `idx_vendor_item` (`vendor_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Perks Program monthly item rotation schedule';

CREATE TABLE IF NOT EXISTS `perks_vendor_items` (
  `VendorItemID` int(11) NOT NULL COMMENT 'Unique vendor item ID in the perks system',
  `MountID` int(11) NOT NULL DEFAULT 0 COMMENT 'Mount ID (0 if not a mount)',
  `BattlePetSpeciesID` int(11) NOT NULL DEFAULT 0 COMMENT 'Battle pet species ID (0 if N/A)',
  `TransmogSetID` int(11) NOT NULL DEFAULT 0 COMMENT 'Transmog set ID (0 if N/A)',
  `ItemModifiedAppearanceID` int(11) NOT NULL DEFAULT 0 COMMENT 'Item modified appearance ID (0 if N/A)',
  `TransmogIllusionID` int(11) NOT NULL DEFAULT 0 COMMENT 'Transmog illusion ID (0 if N/A)',
  `ToyID` int(11) NOT NULL DEFAULT 0 COMMENT 'Toy ID (0 if N/A)',
  `WarbandSceneID` int(11) NOT NULL DEFAULT 0 COMMENT 'Warband scene ID (0 if N/A)',
  `Price` int(11) NOT NULL DEFAULT 0 COMMENT 'Cost in Traders Tender',
  `OriginalPrice` int(11) NOT NULL DEFAULT 0 COMMENT 'Pre-discount price (0 = no discount)',
  `AvailableUntil` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Unix timestamp expiry',
  `Disabled` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1 = item disabled',
  `DoesNotExpire` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1 = permanent item',
  PRIMARY KEY (`VendorItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Perks Program vendor item definitions';

-- Rotations/items are intentionally NOT seeded here: the live server already has a
-- populated rotation (Aug-Dec 2026) and the current window is handled automatically.