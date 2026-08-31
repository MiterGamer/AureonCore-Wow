-- Remaining hotfix parents: areatrigger, undelete item 265039, battlemaster 1141.
SET NAMES utf8mb4;

-- Quest 96052 objective needs AreaTrigger 43025
INSERT IGNORE INTO `hotfixes`.`area_trigger`
(`PosX`,`PosY`,`PosZ`,`ID`,`ContinentID`,`PhaseUseFlags`,`PhaseID`,`PhaseGroupID`,
 `Radius`,`BoxLength`,`BoxWidth`,`BoxHeight`,`BoxYaw`,`ShapeType`,`ShapeID`,
 `AreaTriggerActionSetID`,`Flags`,`VerifiedBuild`)
VALUES (0,0,0,43025,0,0,0,0,5,0,0,0,0,0,0,0,0,69497);

-- Item 265039 is present in item/item_sparse but marked deleted (Status=2) in hotfix_data
UPDATE `hotfixes`.`hotfix_data`
SET `Status`=3
WHERE `RecordId`=265039 AND `Status`=2;

-- Battlemaster list so BG 1141 is recognized
INSERT IGNORE INTO `hotfixes`.`battlemaster_list`
(`ID`,`Name`,`GameType`,`ShortDescription`,`LongDescription`,`InstanceType`,`PvpType`,
 `MinLevel`,`MaxLevel`,`RatedPlayers`,`MinPlayers`,`MaxPlayers`,`GroupsAllowed`,
 `MaxGroupSize`,`HolidayWorldState`,`Flags`,`IconFileDataID`,`RequiredPlayerConditionID`,`VerifiedBuild`)
VALUES
(1141,'Slayer''s Rise','Battleground','Slayer''s Rise','Slayer''s Rise',3,1,90,90,0,5,40,1,5,0,0,525915,0,69497);

INSERT IGNORE INTO `hotfixes`.`battlemaster_list_x_map`
(`ID`,`MapID`,`BattlemasterListID`,`VerifiedBuild`)
VALUES (1141,0,1141,69497);
