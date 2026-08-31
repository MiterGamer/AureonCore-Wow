-- TableHash must match the WDC5 header of the client DB2 (Data/maps/dbc/deDE).
-- Previous decimals were wrong:
--   AreaTrigger 0x1A5081E1 = 441483745 (we stored 441516513 = 0x1A5101E1)
--   PvpSeason   0xA51D9A01 = 2770180609 (we stored 2770205185 = 0xA51DFA01)
SET NAMES utf8mb4;

DELETE FROM `hotfixes`.`hotfix_data`
WHERE `Id` IN (111748, 111749);

INSERT INTO `hotfixes`.`hotfix_data`
(`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`)
VALUES
(111748, 3781000001, 0x1A5081E1, 43025, 1, 69497),
(111749, 3781000002, 0xA51D9A01, 39, 1, 69497);
