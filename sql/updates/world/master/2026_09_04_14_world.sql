-- Giant Boar 156595 / 156267 unit_flags3 from sniff 14-55-01 CreateObject1/2
-- Flags3 67108864 (UNIT_FLAG3_UNK26). TDB 2024_02_24 had this; live template lost it.
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

UPDATE `creature_template`
SET `unit_flags3` = 67108864, `VerifiedBuild` = 69587
WHERE `entry` IN (156595, 156267);
