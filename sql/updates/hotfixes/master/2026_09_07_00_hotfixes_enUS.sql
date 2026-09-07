-- Darkmaul Citadel (ID 2043) must be solo dungeon for Exile's Reach.
-- DB2 default has 1/1/3 group requirement which blocks solo queue.
-- Fix: set Count and MinCount for solo DPS only.
-- DO NOT DELETE+INSERT — only UPDATE the role fields to preserve original DB2 data.
UPDATE `lfg_dungeons`
SET `CountTank` = 0, `CountHealer` = 0, `CountDamage` = 1,
    `MinCountTank` = 0, `MinCountHealer` = 0, `MinCountDamage` = 1,
    `MaxPremadeCountTank` = 0, `MaxPremadeCountHealer` = 0, `MaxPremadeCountDamage` = 1,
    `MaxPremadeGroupSize` = 1
WHERE `ID` = 2043;
