-- Exile's Reach: restore Harpy Totem visibility and reliable Meredy quest credit.
SET NAMES utf8mb4;

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 26
  AND `SourceGroup` IN (15355, 15356)
  AND `SourceEntry` IN (0, 10424)
  AND `ConditionTypeOrReference` = 6;

INSERT INTO `conditions`
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
 `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
 `ConditionStringValue1`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(26, 15355, 10424, 0, 0, 6, 0, 67, 0, 0, '', 0, 0, 0, '', 'Show Horde Harpy Totems'),
(26, 15356, 10424, 0, 0, 6, 0, 469, 0, 0, '', 0, 0, 0, '', 'Show Alliance Harpy Totems');

UPDATE `gameobject`
SET `animprogress` = 0,
    `state` = 1,
    `spawntimesecs` = 120
WHERE `id` IN (327146, 350803)
  AND `map` = 2175;