-- Wowhead item names for rows added from DBErrors.log.
SET NAMES utf8mb4;

UPDATE `hotfixes`.`item_sparse` SET `Display`='Silvermoon Splendor' WHERE `ID`=265039;
UPDATE `hotfixes`.`item_sparse` SET `Display`='Lokago\'s Experiment Notes' WHERE `ID`=276910;
UPDATE `hotfixes`.`item_sparse` SET `Display`='Missive from Malacrass' WHERE `ID`=276911;
UPDATE `hotfixes`.`item_sparse` SET `Display`='Lokago\'s Ledger' WHERE `ID`=276913;

INSERT INTO `hotfixes`.`item_sparse_locale` (`ID`,`locale`,`Display_lang`,`VerifiedBuild`) VALUES
(265039,'deDE','Pracht von Silbermond',68974),
(276910,'deDE','Lokagos Experimentnotizen',68974),
(276911,'deDE','Schreiben von Malacrass',68974),
(276913,'deDE','Lokagos Geschäftsbuch',68974)
ON DUPLICATE KEY UPDATE `Display_lang`=VALUES(`Display_lang`);
