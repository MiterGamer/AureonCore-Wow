-- Spell 316984 Ping Garrick to ride Boar (DNT).
-- Sniff 14-55-01 SMSG_SPELL_GO 15:10:26: caster player, HitTarget creature 156267.
-- 1.8s later SMSG_MOVE_UNROOT + SMSG_MOVE_ENABLE_GRAVITY on that vehicle.
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 316984 AND `SourceId` = 0;

INSERT INTO `conditions`
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
 `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
 `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(13, 1, 316984, 0, 0, 31, 0, 3, 156267, 0, 0, 0, 0, '', 'Spell 316984 (sniff 14-55-01) hits Giant Boar vehicle 156267');
