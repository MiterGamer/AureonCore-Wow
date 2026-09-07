SET @col_exists = (SELECT COUNT(*) FROM `information_schema`.`COLUMNS` WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'playerchoice' AND `COLUMN_NAME` = 'RequiresSelection');
SET @sql = IF(@col_exists = 0, 'ALTER TABLE `playerchoice` ADD `RequiresSelection` tinyint(1) NOT NULL DEFAULT 0 AFTER `ShowChoicesAsList`', 'SELECT 1');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
