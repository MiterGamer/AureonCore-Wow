-- Alliance Exile's Reach: restore official quest order for all classes.
-- Backup: sql/backups/2026_08_30_quest_addon_exiles_reach.sql
--
-- Official order:
--   Warming Up -> Stand Your Ground -> Brace for Impact -> Murloc Mania
--   -> Emergency First Aid -> Finding the Lost Expedition -> Cooking Meat
--   -> Enhanced Combat Tactics (all except Hunter; Monk uses 59339)
--   -> Northbound
--   -> Hunter only: Taming the Wilds
--   -> Down with the Quilboar + Quilboar Shadow Magic
--   -> Scout-o-Matic -> Re-sizing -> Ride the Boar -> Stocking Up
--   then parallel: Harpy / Westward / class quests -> Darkmaul
SET NAMES utf8mb4;

-- Enhanced Combat is not for Hunters (they get Taming the Wilds).
-- 8191 all classes - 512 Monk - 4 Hunter = 7675
UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 7675, `NextQuestID` = 55173
WHERE `ID` = 59254;

UPDATE `world`.`quest_template_addon`
SET `NextQuestID` = 55173
WHERE `ID` = 59339;

-- Northbound only after Cooking Meat (plus conditions below)
UPDATE `world`.`quest_template_addon`
SET `PrevQuestID` = 55174
WHERE `ID` = 55173;

-- Hunter: Taming the Wilds leads into the quilboar pair
UPDATE `world`.`quest_template_addon`
SET `NextQuestID` = 55186
WHERE `ID` = 59342;

-- Meredy rescue is Alliance-only
UPDATE `world`.`quest_template`
SET `AllowableRaces` = 1101
WHERE `ID` = 55763;

-- Northbound: already had combat-complete conditions; hunters never did those quests.
-- ElseGroup 2 = Hunter who finished Cooking Meat.
INSERT IGNORE INTO `world`.`conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(19,0,55173,0,2,15,0,4,0,0,'',0,0,0,'','Northbound: Hunter class'),
(19,0,55173,0,2,8,0,55174,0,0,'',0,0,0,'','Northbound: Hunter finished Cooking Meat'),
(20,0,55173,0,0,8,0,59254,0,0,'',0,0,0,'','Northbound mark: Enhanced Combat'),
(20,0,55173,0,1,8,0,59339,0,0,'',0,0,0,'','Northbound mark: Monk Enhanced Combat'),
(20,0,55173,0,2,15,0,4,0,0,'',0,0,0,'','Northbound mark: Hunter'),
(20,0,55173,0,2,8,0,55174,0,0,'',0,0,0,'','Northbound mark: Hunter cooked');

-- Quilboar pair: non-hunters after Northbound; hunters after Taming the Wilds
INSERT IGNORE INTO `world`.`conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(19,0,55186,0,0,15,0,4,0,0,'',1,0,0,'','Quilboar: not Hunter'),
(19,0,55186,0,1,15,0,4,0,0,'',0,0,0,'','Quilboar: Hunter'),
(19,0,55186,0,1,8,0,59342,0,0,'',0,0,0,'','Quilboar: Hunter finished Taming'),
(19,0,55184,0,0,15,0,4,0,0,'',1,0,0,'','Shadow Magic: not Hunter'),
(19,0,55184,0,1,15,0,4,0,0,'',0,0,0,'','Shadow Magic: Hunter'),
(19,0,55184,0,1,8,0,59342,0,0,'',0,0,0,'','Shadow Magic: Hunter finished Taming'),
(20,0,55186,0,0,15,0,4,0,0,'',1,0,0,'','Quilboar mark: not Hunter'),
(20,0,55186,0,1,15,0,4,0,0,'',0,0,0,'','Quilboar mark: Hunter'),
(20,0,55186,0,1,8,0,59342,0,0,'',0,0,0,'','Quilboar mark: Taming done'),
(20,0,55184,0,0,15,0,4,0,0,'',1,0,0,'','Shadow Magic mark: not Hunter'),
(20,0,55184,0,1,15,0,4,0,0,'',0,0,0,'','Shadow Magic mark: Hunter'),
(20,0,55184,0,1,8,0,59342,0,0,'',0,0,0,'','Shadow Magic mark: Taming done');
