SET @col_exists = (SELECT COUNT(*) FROM `information_schema`.`COLUMNS` WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'playerchoice' AND `COLUMN_NAME` = 'ForceDontShowChoicesAsList');
SET @sql = IF(@col_exists > 0, 'ALTER TABLE `playerchoice` DROP `ForceDontShowChoicesAsList`', 'SELECT 1');
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;
