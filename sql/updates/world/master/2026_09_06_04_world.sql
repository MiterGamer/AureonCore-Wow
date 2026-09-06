-- Last-start DBErrors: crash/flag safety. Server already coerces these at load.
SET NAMES utf8mb4;

-- Faction 0 can crash; Trinity substitutes 35.
UPDATE `creature_template` SET `faction` = 35 WHERE `faction` = 0;

-- VehicleId 2855 is not in Vehicle.db2 (client freeze).
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 71056 AND `VehicleId` = 2855;

-- UNIT_NPC_FLAG_SPELLCLICK (0x01000000) without npc_spellclick_spells rows.
UPDATE `creature_template` ct
LEFT JOIN `npc_spellclick_spells` sc ON sc.`npc_entry` = ct.`entry`
SET ct.`npcflag` = ct.`npcflag` & ~0x01000000
WHERE (ct.`npcflag` & 0x01000000) <> 0 AND sc.`npc_entry` IS NULL;

-- UNIT_FLAG_ALLOWED = 0x02002340. 156501/156814 still stored CAN_SWIM (0x8000).
UPDATE `creature_template`
SET `unit_flags` = `unit_flags` & 0x02002340
WHERE `entry` IN (156501, 156814);

-- Invalid mount DisplayIDs in creature_template_addon (CreatureDisplayInfo missing).
UPDATE `creature_template_addon` SET `mount` = 0
WHERE `mount` IN (23056, 24447, 24891, 26363);
