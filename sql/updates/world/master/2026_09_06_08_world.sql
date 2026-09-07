-- Exile's Reach exit: Kalecgos flies to the Dragon Isles (map 2444).
-- Gossip 39219 already exists from the 12.1 sniff. Horde 59985 uses the same
-- credit 244389. Landing Kalecgos 238913 offers 87547 (What's Your Specialty?).
-- 156501 stays boss_ravnyr; leave-gossip is in that script. npc_kalecgos_darkmaul_leave
-- is registered as the leave-only handler if ScriptName is set that way.
-- No Horde post-dungeon starter spawn (167675 Thrall) — no sniffed coordinates.
SET NAMES utf8mb4;

-- Dragon Isles gossip: Alliance 55991 or Horde 59985.
DELETE FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 39219 AND `SourceEntry` = 0
  AND (`Comment` LIKE 'Sniff 19-16-21:%' OR `Comment` LIKE 'Retail NPE:%');
INSERT INTO `conditions`
(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,
 `ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,
 `ConditionStringValue1`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(15,39219,0,0,0,47,0,55991,8,0,'',0,0,0,'','Sniff 19-16-21: Kalecgos Dragon Isles gossip if 55991 incomplete'),
(15,39219,0,0,1,47,0,59985,8,0,'',0,0,0,'','Retail NPE: Kalecgos Dragon Isles gossip if 59985 incomplete');

-- After An End to Beginnings, land on What's Your Specialty? at 238913.
UPDATE `quest_template` SET `RewardNextQuest` = 87547 WHERE `ID` IN (55991, 59985) AND `RewardNextQuest` = 0;

-- Sniffed Wild Coast Kalecgos turns in the travel quests as well as 87547.
DELETE FROM `creature_questender` WHERE `id` = 238913 AND `quest` IN (55991, 59985, 87547);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(238913, 55991, 0),
(238913, 59985, 0),
(238913, 87547, 0);

INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(238913, 87547, 0);

-- Keep the dungeon boss script. Leave gossip 39497 / 319030 is handled by boss_ravnyr.
UPDATE `creature_template` SET `ScriptName` = 'boss_ravnyr' WHERE `entry` = 156501 AND `ScriptName` IN ('', 'npc_kalecgos_darkmaul_leave');
