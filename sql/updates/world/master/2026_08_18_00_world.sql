SET @c1 = (SELECT COUNT(*) FROM `information_schema`.`COLUMNS` WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'playerchoice' AND `COLUMN_NAME` = 'ShowChoicesAsGrid');
SET @sql = IF(@c1 = 0, 'ALTER TABLE `playerchoice` ADD COLUMN `ShowChoicesAsGrid` tinyint(1) NOT NULL DEFAULT 0 AFTER `RequiresSelection`', 'SELECT 1');
PREPARE s1 FROM @sql; EXECUTE s1; DEALLOCATE PREPARE s1;

SET @c2 = (SELECT COUNT(*) FROM `information_schema`.`COLUMNS` WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'playerchoice' AND `COLUMN_NAME` = 'HideAnswerArt');
SET @sql = IF(@c2 = 0, 'ALTER TABLE `playerchoice` ADD COLUMN `HideAnswerArt` tinyint(1) NOT NULL DEFAULT 0 AFTER `ShowChoicesAsGrid`', 'SELECT 1');
PREPARE s2 FROM @sql; EXECUTE s2; DEALLOCATE PREPARE s2;

SET @c3 = (SELECT COUNT(*) FROM `information_schema`.`COLUMNS` WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'playerchoice' AND `COLUMN_NAME` = 'ShowChoicesAsColumns');
SET @sql = IF(@c3 = 0, 'ALTER TABLE `playerchoice` ADD COLUMN `ShowChoicesAsColumns` tinyint(1) NOT NULL DEFAULT 0 AFTER `HideAnswerArt`', 'SELECT 1');
PREPARE s3 FROM @sql; EXECUTE s3; DEALLOCATE PREPARE s3;
