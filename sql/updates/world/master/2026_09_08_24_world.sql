-- Meredy's public ritual actor stays captured for unfinished players only.
-- Object.cpp deliberately exempts private objects from source-32 conditions,
-- so the rescued personal clone remains visible while leaving the ritual.
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `NegativeCondition`,`Comment`)
SELECT 32,3,153211,0,0,47,0,55763,66,0,1,
 'Meredy ritual: hide public captive after personal rescue completion'
WHERE NOT EXISTS (SELECT 1 FROM `conditions` WHERE `SourceTypeOrReferenceId`=32
 AND `SourceGroup`=3 AND `SourceEntry`=153211 AND `SourceId`=0);
