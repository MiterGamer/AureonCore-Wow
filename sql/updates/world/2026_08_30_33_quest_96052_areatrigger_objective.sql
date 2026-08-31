-- Quest 96052 "Through the Mana Rift" objective 473842 is Type 20 (DBC AreaTrigger)
-- and points at AT 43025. That ID is a Blizzard hotfix, not in AreaTrigger.db2
-- (client 12.1.0.69497 max ID 10527; map 3075 Naigtal has zero ATs).
-- hotfix.area_trigger + hotfix_data are kept; the core store still does not
-- insert new DB2 IDs, so DBErrors keeps reporting a missing areatrigger.
-- Wowhead lists only the three item steps. Convert the wait-objective to the
-- same credit as "Travel through the Rift" (item 264025) so the quest can
-- complete after the rift without a DBC AT.
-- Backup: sql/backups/2026_08_30_quest_obj_473842.sql
SET NAMES utf8mb4;

UPDATE `world`.`quest_objectives`
SET `Type` = 0, `ObjectID` = 264025, `Amount` = 1
WHERE `ID` = 473842 AND `QuestID` = 96052;
