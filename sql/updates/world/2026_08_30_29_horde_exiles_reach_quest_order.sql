-- Horde Exile's Reach: same order fix as Alliance (2026_08_30_28).
-- Backup: sql/backups/2026_08_30_quest_addon_exiles_reach_horde.sql
SET NAMES utf8mb4;

-- Enhanced Combat is not for Hunters (7675 = all except Monk + Hunter)
UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 7675, `NextQuestID` = 59935
WHERE `ID` = 59933;

UPDATE `world`.`quest_template_addon`
SET `NextQuestID` = 59935
WHERE `ID` = 59934;

UPDATE `world`.`quest_template_addon`
SET `PrevQuestID` = 59932
WHERE `ID` = 59935;

UPDATE `world`.`quest_template_addon`
SET `NextQuestID` = 59938
WHERE `ID` = 59937;

INSERT IGNORE INTO `world`.`conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(19,0,59935,0,2,15,0,4,0,0,'',0,0,0,'','Horde Northbound: Hunter'),
(19,0,59935,0,2,8,0,59932,0,0,'',0,0,0,'','Horde Northbound: Hunter finished Cooking Meat'),
(20,0,59935,0,0,8,0,59933,0,0,'',0,0,0,'','Horde Northbound mark: Enhanced Combat'),
(20,0,59935,0,1,8,0,59934,0,0,'',0,0,0,'','Horde Northbound mark: Monk Enhanced Combat'),
(20,0,59935,0,2,15,0,4,0,0,'',0,0,0,'','Horde Northbound mark: Hunter'),
(20,0,59935,0,2,8,0,59932,0,0,'',0,0,0,'','Horde Northbound mark: Hunter cooked'),
(19,0,59938,0,0,15,0,4,0,0,'',1,0,0,'','Horde Quilboar: not Hunter'),
(19,0,59938,0,1,15,0,4,0,0,'',0,0,0,'','Horde Quilboar: Hunter'),
(19,0,59938,0,1,8,0,59937,0,0,'',0,0,0,'','Horde Quilboar: Hunter finished Taming'),
(19,0,59939,0,0,15,0,4,0,0,'',1,0,0,'','Horde Shadow Magic: not Hunter'),
(19,0,59939,0,1,15,0,4,0,0,'',0,0,0,'','Horde Shadow Magic: Hunter'),
(19,0,59939,0,1,8,0,59937,0,0,'',0,0,0,'','Horde Shadow Magic: Hunter finished Taming'),
(20,0,59938,0,0,15,0,4,0,0,'',1,0,0,'','Horde Quilboar mark: not Hunter'),
(20,0,59938,0,1,15,0,4,0,0,'',0,0,0,'','Horde Quilboar mark: Hunter'),
(20,0,59938,0,1,8,0,59937,0,0,'',0,0,0,'','Horde Quilboar mark: Taming done'),
(20,0,59939,0,0,15,0,4,0,0,'',1,0,0,'','Horde Shadow Magic mark: not Hunter'),
(20,0,59939,0,1,15,0,4,0,0,'',0,0,0,'','Horde Shadow Magic mark: Hunter'),
(20,0,59939,0,1,8,0,59937,0,0,'',0,0,0,'','Horde Shadow Magic mark: Taming done');
