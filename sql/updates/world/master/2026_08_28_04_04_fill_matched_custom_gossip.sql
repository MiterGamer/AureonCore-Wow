SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tmp_gossip_bt_map`;
CREATE TABLE `tmp_gossip_bt_map` (
  `OptionText` text NOT NULL,
  `bt_id` int unsigned NOT NULL,
  KEY `bt_id` (`bt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `tmp_gossip_bt_map` (`OptionText`, `bt_id`)
SELECT d.`OptionText`, MIN(b.`ID`)
FROM (
  SELECT DISTINCT `OptionText`
  FROM `gossip_menu_option`
  WHERE `OptionBroadcastTextID` = 0
    AND `OptionText` IS NOT NULL
    AND `OptionText` <> ''
) d
INNER JOIN `hotfixes`.`broadcast_text` b
  ON b.`Text` COLLATE utf8mb4_unicode_ci = d.`OptionText` COLLATE utf8mb4_unicode_ci
  OR b.`Text1` COLLATE utf8mb4_unicode_ci = d.`OptionText` COLLATE utf8mb4_unicode_ci
GROUP BY d.`OptionText`;

INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`)
SELECT
  g.`MenuID`,
  g.`OptionID`,
  CAST(btl.`locale` AS CHAR CHARACTER SET utf8mb4),
  COALESCE(NULLIF(btl.`Text_lang`, ''), NULLIF(btl.`Text1_lang`, '')),
  g.`BoxText`
FROM `gossip_menu_option` g
INNER JOIN `tmp_gossip_bt_map` m
  ON m.`OptionText` COLLATE utf8mb4_unicode_ci = g.`OptionText` COLLATE utf8mb4_unicode_ci
INNER JOIN `hotfixes`.`broadcast_text_locale` btl
  ON btl.`ID` = m.`bt_id`
WHERE g.`OptionBroadcastTextID` = 0
  AND COALESCE(NULLIF(btl.`Text_lang`, ''), NULLIF(btl.`Text1_lang`, '')) IS NOT NULL
ON DUPLICATE KEY UPDATE
  `OptionText` = COALESCE(VALUES(`OptionText`), `gossip_menu_option_locale`.`OptionText`);

DROP TABLE IF EXISTS `tmp_gossip_bt_map`;
