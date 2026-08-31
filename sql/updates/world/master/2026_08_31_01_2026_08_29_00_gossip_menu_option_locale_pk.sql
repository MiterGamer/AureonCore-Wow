-- Gossip locale: Locale must be part of the primary key (TrinityCore).
-- Safe to run more than once.

SET @pk := (
  SELECT GROUP_CONCAT(COLUMN_NAME ORDER BY SEQ_IN_INDEX)
  FROM information_schema.STATISTICS
  WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'gossip_menu_option_locale'
    AND INDEX_NAME = 'PRIMARY'
);
SET @sql := IF(
  @pk = 'MenuID,OptionID,Locale',
  'SELECT ''gossip_menu_option_locale PK already includes Locale'' AS info',
  'ALTER TABLE `gossip_menu_option_locale` DROP PRIMARY KEY, ADD PRIMARY KEY (`MenuID`,`OptionID`,`Locale`)'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
