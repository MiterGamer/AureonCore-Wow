-- Quartermaster Richter / Provisioner Jin'hake: enable repair (UNIT_NPC_FLAG_REPAIR)
-- Subname already "Supplies and Repairs" / "Repair and Supplies"; TDB omitted flag 4096.
UPDATE `creature_template` SET `npcflag` = `npcflag` | 4096 WHERE `entry` IN (156800, 167213);
