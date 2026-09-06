-- Exile's Reach quests, gossip, phases from Alliance sniff
-- dump_12.1.0.69587_2026-09-05_19-26-03_parsed-exile-alli.txt (build 69587).
-- 55991 starts on 245686 (not 244389). Leave gossip 39497 / spell 319030 after ritual.
SET NAMES utf8mb4;

DELETE FROM `gossip_menu` WHERE `MenuID` = 39497;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(39497, 0, 69587);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 39497;
INSERT INTO `gossip_menu_option`
(`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`,
 `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`,
 `SpellID`, `OverrideIconID`, `VerifiedBuild`)
VALUES
(39497, 134083, 0, 0, 'I''m ready to get out of this citadel.', 0, 0, 1, 0, 0, NULL, 0, 0, NULL, 0, 319030, NULL, 69587),
(39497, 134085, 1, 0, 'Tell me what it means to be an Aspect of the blue dragonflight.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 69587);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 39497 AND `OptionID` IN (0, 1) AND `Locale` = 'deDE';
INSERT INTO `gossip_menu_option_locale` (`MenuID`, `OptionID`, `Locale`, `OptionText`, `BoxText`) VALUES
(39497, 0, 'deDE', 'Ich bin bereit, aus dieser Zitadelle zu verschwinden.', NULL),
(39497, 1, 'deDE', 'Erzählt mir, was es bedeutet, ein Aspekt des blauen Drachenschwarms zu sein.', NULL);

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 39497 AND `SourceEntry` = 0;
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,39497,0,0,0,47,0,55992,8,0,'',0,0,0,'','Sniff 19-26-03: leave Darkmaul gossip if 55992 incomplete'),
(15,39497,0,0,0,48,0,394065,0,0,'',0,0,0,'','Sniff 19-26-03: leave Darkmaul gossip after ritual 89016');

DELETE FROM `phase_area` WHERE `AreaId` = 10424 AND `PhaseId` IN (13334, 13839, 13843, 13417);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(10424, 13334, 'Ogre disguise in Darkmaul Citadel'),
(10424, 13839, 'Alliance heroes inside Darkmaul Citadel'),
(10424, 13843, 'Captain Kelra freed in Darkmaul Citadel'),
(10424, 13417, 'Alliance heroes after Darkmaul Citadel');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` IN (13334, 13839, 13843, 13417) AND `SourceEntry` = 10424;
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(26,13334,10424,0,0,1,0,298241,0,0,'',0,0,0,'','Sniff 19-26-03: phase 13334 while ogre disguise 298241 is active'),
(26,13839,10424,0,0,47,0,55981,66,0,'',0,0,0,'','Sniff 19-26-03: phase 13839 if 55981 complete | rewarded'),
(26,13843,10424,0,0,47,0,55990,66,0,'',0,0,0,'','Sniff 19-26-03: phase 13843 if 55990 complete | rewarded'),
(26,13417,10424,0,0,47,0,55992,66,0,'',0,0,0,'','Sniff 19-26-03: phase 13417 if 55992 complete | rewarded');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 3 AND `SourceEntry` IN (156954, 161306);
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(32,3,156954,0,0,47,0,55990,66,0,'',1,0,0,'','Sniff 19-26-03: hide chained Kelra if 55990 complete | rewarded'),
(32,3,161306,0,0,47,0,55990,66,0,'',1,0,0,'','Sniff 19-26-03: hide rune beams if 55990 complete | rewarded');

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 5 AND `SourceEntry` = 326651;
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(32,5,326651,0,0,6,0,469,0,0,'',0,0,0,'','Sniff 19-26-03: Alliance catapult 326651 for 55989');

DELETE FROM `creature_queststarter` WHERE `quest` IN (55981, 55988, 55989, 55990, 55991, 55992, 55194, 56344, 85678);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(245394, 55194, 69587),
(245394, 56344, 69587),
(245394, 85678, 69587),
(245397, 55981, 69587),
(156942, 55988, 69587),
(245667, 55989, 69587),
(156961, 55990, 69587),
(156965, 55992, 69587),
(245686, 55991, 69587);

DELETE FROM `creature_questender` WHERE `quest` IN (56344, 55981, 55988, 55989, 55990, 55991, 55992);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(245397, 56344, 69587),
(156961, 55981, 69587),
(156942, 55988, 69587),
(245667, 55989, 69587),
(156965, 55990, 69587),
(245686, 55992, 69587);
