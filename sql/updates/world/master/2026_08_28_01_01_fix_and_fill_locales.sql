-- Fix gossip_menu_option_locale: Locale must be part of the primary key
-- so all 10 client languages can be stored (TrinityCore expects MenuID+OptionID+Locale).

ALTER TABLE `gossip_menu_option_locale`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`MenuID`, `OptionID`, `Locale`);

-- Official Blizzard translations from hotfixes.broadcast_text_locale
-- for every gossip option that already has OptionBroadcastTextID.

INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`)
SELECT
  g.`MenuID`,
  g.`OptionID`,
  CAST(btl.`locale` AS CHAR CHARACTER SET utf8mb4),
  COALESCE(NULLIF(btl.`Text_lang`, ''), NULLIF(btl.`Text1_lang`, '')),
  COALESCE(NULLIF(btb.`Text_lang`, ''), NULLIF(btb.`Text1_lang`, ''), g.`BoxText`)
FROM `gossip_menu_option` g
INNER JOIN `hotfixes`.`broadcast_text_locale` btl
  ON btl.`ID` = g.`OptionBroadcastTextID`
LEFT JOIN `hotfixes`.`broadcast_text_locale` btb
  ON btb.`ID` = g.`BoxBroadcastTextID`
 AND btb.`locale` = btl.`locale`
WHERE g.`OptionBroadcastTextID` > 0
  AND COALESCE(NULLIF(btl.`Text_lang`, ''), NULLIF(btl.`Text1_lang`, '')) IS NOT NULL
ON DUPLICATE KEY UPDATE
  `OptionText` = COALESCE(VALUES(`OptionText`), `gossip_menu_option_locale`.`OptionText`),
  `BoxText` = COALESCE(VALUES(`BoxText`), `gossip_menu_option_locale`.`BoxText`);
