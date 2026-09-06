-- Phase 13811 (Henry/Kee-La/ritual Meredy/Bloodbeak at Harpy Roost) had no
-- "quest in progress" ElseGroup. TDB only kept the phase if a roost quest was
-- not taken yet, or already complete|rewarded. Accepting all three (55763/55764/
-- 55881) dropped the phase until one was completed; having 55882 in the log
-- dropped it even while Rescue of Meredy was still incomplete.
-- Flag 10 = QUEST_STATUS_COMPLETE (2) | INCOMPLETE (8). Stays on until rewarded.
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 13811
  AND `ElseGroup` IN (6, 7, 8)
  AND `Comment` LIKE 'See Henry and Kee-La at Harpy Roost if quest % is in log';

INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
-- 10528 Harpy Roost
(26,13811,10528,0,6,47,0,55763,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Rescue of Meredy is in log'),
(26,13811,10528,0,7,47,0,55764,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Harpy Culling is in log'),
(26,13811,10528,0,8,47,0,55881,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Purge the Totems is in log'),
-- 10529 Alliance populated camp (TDB already grants 13811 here)
(26,13811,10529,0,6,47,0,55763,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Rescue of Meredy is in log'),
(26,13811,10529,0,7,47,0,55764,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Harpy Culling is in log'),
(26,13811,10529,0,8,47,0,55881,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Purge the Totems is in log'),
-- 10588
(26,13811,10588,0,6,47,0,55763,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Rescue of Meredy is in log'),
(26,13811,10588,0,7,47,0,55764,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Harpy Culling is in log'),
(26,13811,10588,0,8,47,0,55881,10,0,'',0,0,0,'','See Henry and Kee-La at Harpy Roost if quest Purge the Totems is in log');
