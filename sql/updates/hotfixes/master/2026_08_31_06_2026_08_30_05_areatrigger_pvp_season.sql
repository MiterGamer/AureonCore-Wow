-- AreaTrigger 43025 was in hotfixes.area_trigger but never applied:
-- hotfix_data has 0 rows for AreaTrigger (TableHash 0x1A5081E1).
-- Quest 96052 objective 473842 ("Travel through the Rift") needs this ID in sAreaTriggerStore.
-- PvP season 39 is set in worldserver.conf but missing from pvp_season.
SET NAMES utf8mb4;

-- Real map/position from quest_poi for 96052 / objective 473842 (map 3075)
UPDATE `hotfixes`.`area_trigger`
SET
  `PosX` = -2194,
  `PosY` = -1713,
  `PosZ` = 44,
  `ContinentID` = 3075,
  `Radius` = 20,
  `VerifiedBuild` = 69497
WHERE `ID` = 43025;

INSERT IGNORE INTO `hotfixes`.`hotfix_data`
(`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`)
VALUES
(111748, 3781000001, 441516513, 43025, 1, 69497);

INSERT IGNORE INTO `hotfixes`.`pvp_season`
(`ID`,`MilestoneSeason`,`AllianceAchievementID`,`HordeAchievementID`,`VerifiedBuild`)
VALUES
(39, 39, 0, 0, 69497);

-- PvpSeason TableHash 0xA51D9A01
INSERT IGNORE INTO `hotfixes`.`hotfix_data`
(`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`)
VALUES
(111749, 3781000002, 2770205185, 39, 1, 69497);
