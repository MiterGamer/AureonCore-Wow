-- Last-start DBErrors leftovers (creature_addon mounts, dead currency, empty path).
SET NAMES utf8mb4;

-- Invalid mount DisplayIDs are on creature_addon (per-guid), not only template_addon.
UPDATE `creature_addon` SET `mount` = 0
WHERE `mount` IN (23056, 24447, 24891, 26363);

-- Quest 39521 rewards currency 392 which is not in CurrencyTypes.db2.
UPDATE `quest_template`
SET `RewardCurrencyID1` = 0, `RewardCurrencyQty1` = 0
WHERE `ID` = 39521 AND `RewardCurrencyID1` = 392;

-- WaypointPath 28545 has no nodes (Mist / creature 3568). Don't invent a path.
DELETE FROM `waypoint_path_node` WHERE `PathId` = 28545;
DELETE FROM `waypoint_path` WHERE `PathId` = 28545;
DELETE FROM `smart_scripts`
WHERE `entryorguid` = 356801 AND `source_type` = 9 AND `id` = 8 AND `action_type` = 53 AND `action_param2` = 28545;

-- npc_text slots with probability but no BroadcastTextID.
UPDATE `npc_text` SET `Probability0` = 0 WHERE `Probability0` > 0 AND `BroadcastTextID0` = 0;
UPDATE `npc_text` SET `Probability1` = 0 WHERE `Probability1` > 0 AND `BroadcastTextID1` = 0;
UPDATE `npc_text` SET `Probability2` = 0 WHERE `Probability2` > 0 AND `BroadcastTextID2` = 0;
UPDATE `npc_text` SET `Probability3` = 0 WHERE `Probability3` > 0 AND `BroadcastTextID3` = 0;
UPDATE `npc_text` SET `Probability4` = 0 WHERE `Probability4` > 0 AND `BroadcastTextID4` = 0;
UPDATE `npc_text` SET `Probability5` = 0 WHERE `Probability5` > 0 AND `BroadcastTextID5` = 0;
UPDATE `npc_text` SET `Probability6` = 0 WHERE `Probability6` > 0 AND `BroadcastTextID6` = 0;
UPDATE `npc_text` SET `Probability7` = 0 WHERE `Probability7` > 0 AND `BroadcastTextID7` = 0;
