-- DBErrors session 05:52: restore flags from existing TDB relations / core masks.
-- No DELETE, no disables, no invented loot/gossip/spells/quests.
SET NAMES utf8mb4;

-- Questgivers that already start or end a quest but lack UNIT_NPC_FLAG_QUESTGIVER (2).
UPDATE `creature_template` AS `ct`
SET `ct`.`npcflag` = `ct`.`npcflag` | 2
WHERE (`ct`.`npcflag` & 2) = 0
AND (
  EXISTS (SELECT 1 FROM `creature_queststarter` AS `qs` WHERE `qs`.`id` = `ct`.`entry`)
  OR EXISTS (SELECT 1 FROM `creature_questender` AS `qe` WHERE `qe`.`id` = `ct`.`entry`)
);

-- Strip unit_flags the core already removes at load (UNIT_FLAG_ALLOWED / 2 / 3).
UPDATE `creature_template`
SET `unit_flags` = `unit_flags` & 0x02002340
WHERE (`unit_flags` & ~0x02002340) <> 0;

UPDATE `creature_template`
SET `unit_flags2` = `unit_flags2` & 0x04034823
WHERE (`unit_flags2` & ~0x04034823) <> 0;

UPDATE `creature_template`
SET `unit_flags3` = `unit_flags3` & 0x014DE0B6
WHERE (`unit_flags3` & ~0x014DE0B6) <> 0;

UPDATE `creature`
SET `unit_flags` = `unit_flags` & 0x02002340
WHERE `unit_flags` IS NOT NULL AND (`unit_flags` & ~0x02002340) <> 0;

UPDATE `creature`
SET `unit_flags2` = `unit_flags2` & 0x04034823
WHERE `unit_flags2` IS NOT NULL AND (`unit_flags2` & ~0x04034823) <> 0;

UPDATE `creature`
SET `unit_flags3` = `unit_flags3` & 0x014DE0B6
WHERE `unit_flags3` IS NOT NULL AND (`unit_flags3` & ~0x014DE0B6) <> 0;

-- StartItem present but ProvidedItemCount = 0: core sets 1 at load.
UPDATE `quest_template_addon` AS `qta`
INNER JOIN `quest_template` AS `qt` ON `qt`.`ID` = `qta`.`ID`
SET `qta`.`ProvidedItemCount` = 1
WHERE `qt`.`StartItem` <> 0 AND `qta`.`ProvidedItemCount` = 0;

INSERT INTO `quest_template_addon` (`ID`, `ProvidedItemCount`)
SELECT `qt`.`ID`, 1
FROM `quest_template` AS `qt`
LEFT JOIN `quest_template_addon` AS `qta` ON `qta`.`ID` = `qt`.`ID`
WHERE `qt`.`StartItem` <> 0 AND `qta`.`ID` IS NULL;

-- Ride Vehicle (46598) for vehicle_template_accessory rows with no spellclick.
INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`)
SELECT DISTINCT `v`.`entry`, 46598, 1, 0
FROM `vehicle_template_accessory` AS `v`
LEFT JOIN `npc_spellclick_spells` AS `s` ON `s`.`npc_entry` = `v`.`entry`
WHERE `s`.`npc_entry` IS NULL;
