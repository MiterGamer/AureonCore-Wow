-- Exile's Reach Darkmaul: sniff 19-16-21 vs TDB (phases 1-4 data).
-- 326651 and 351477 sit on the same coords at phase 0. Alliance 55989 credits 326651
-- (CMSG_CAST_SPELL 6477 + REPORT_USE); Horde 59980 credits 351477. Split by team.
-- 39497 leave-gossip is Alliance-only; Horde 59984 / objective 397381 uses the same Kalecgos.
-- Herbert 167598 (wiki/TDB 59978) has the same transform gossip text as Meredy 24550.
-- No new GUIDs, no Horde coordinates, no DELETE of world rows.
SET NAMES utf8mb4;

-- Alliance catapults 326651 visible to Alliance; Horde 351477 visible to Horde.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 5 AND `SourceEntry` IN (326651, 351477)
  AND `Comment` LIKE 'Sniff 19-16-21:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(32,5,326651,0,0,6,0,469,0,0,'',0,0,0,'','Sniff 19-16-21: Alliance catapult 326651 for 55989'),
(32,5,351477,0,0,6,0,67,0,0,'',0,0,0,'','Sniff 19-16-21: Horde catapult 351477 for 59980');

INSERT IGNORE INTO `gameobject_template_addon`
(`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`, `AIAnimKitID`)
VALUES
(351477, 0, 262176, 0, 0, 0, 0);

-- Leave Darkmaul: Alliance 55992 / 394065 or Horde 59984 / 397381.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 39497 AND `SourceEntry` = 0
  AND (`Comment` LIKE 'Sniff 19-16-21:%' OR `Comment` LIKE 'Wiki/TDB:%');
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,39497,0,0,0,47,0,55992,8,0,'',0,0,0,'','Sniff 19-16-21: leave Darkmaul gossip if 55992 incomplete'),
(15,39497,0,0,0,48,0,394065,0,0,'',0,0,0,'','Sniff 19-16-21: leave Darkmaul gossip after ritual 89016'),
(15,39497,0,0,1,47,0,59984,8,0,'',0,0,0,'','Wiki/TDB: leave Darkmaul gossip if 59984 incomplete'),
(15,39497,0,0,1,48,0,397381,0,0,'',0,0,0,'','Wiki/TDB: leave Darkmaul gossip after ritual 89018');

-- Ogre transform gossip 24550: Alliance 55981 (Meredy) or Horde 59978 (Herbert).
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 24550 AND `SourceEntry` = 0 AND `ElseGroup` = 1
  AND `Comment` LIKE 'Wiki/TDB:%';
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,24550,0,0,1,47,0,59978,8,0,'',0,0,0,'','Wiki/TDB: ogre transform gossip if 59978 incomplete');

UPDATE `creature_template`
SET `npcflag` = 1,
    `ScriptName` = 'npc_meredy_huntswell_ogre'
WHERE `entry` = 167598 AND `ScriptName` = '';

INSERT IGNORE INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`)
VALUES
(167598, 24550, 0);
