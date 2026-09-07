-- Restore Kalecgos gossip menus wiped after 2026_09_04_11 (TextID 0 rows).
-- Without gossip_menu 39219 the Dragon Isles option never appears.
SET NAMES utf8mb4;

DELETE FROM `gossip_menu` WHERE `MenuID` IN (39219, 39497);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(39219, 0, 0),
(39497, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (39219, 39497);
INSERT INTO `gossip_menu_option`
(`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`,
 `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`,
 `SpellID`, `OverrideIconID`, `VerifiedBuild`)
VALUES
(39219, 133763, 0, 0, 'Take me to the Dragon Isles and tell me what is happening there.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 0),
(39497, 134083, 0, 0, 'I''m ready to get out of this citadel.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, 319030, NULL, 0),
(39497, 134085, 1, 0, 'Tell me what it means to be an Aspect of the blue dragonflight.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 0);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` IN (39219, 39497) AND `Locale` = 'deDE';
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(39219, 0, 'deDE', 'Bringt mich zu den Dracheninseln und sagt mir, was dort passiert.', NULL),
(39497, 0, 'deDE', 'Ich bin bereit, aus dieser Zitadelle zu verschwinden.', NULL),
(39497, 1, 'deDE', 'Erzählt mir, was es bedeutet, ein Aspekt des blauen Drachenschwarms zu sein.', NULL);

INSERT IGNORE INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(244389, 39219, 0),
(156501, 39497, 0);
