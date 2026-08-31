-- Remaining DBErrors.log warnings: add missing parents / assignments. Does not delete.
SET NAMES utf8mb4;

-- Model info for the display used by stub creatures (fixes "No model data exist for 140993")
INSERT IGNORE INTO `world`.`creature_model_info`
(`DisplayID`,`BoundingRadius`,`CombatReach`,`DisplayID_Other_Gender`,`VerifiedBuild`)
VALUES (140993,0.5,1.5,0,68974);

-- Normalize invalid (non-unit) gameobject quaternions
UPDATE `world`.`gameobject` g
JOIN (
  SELECT `guid`,
         SQRT(`rotation0`*`rotation0`+`rotation1`*`rotation1`+`rotation2`*`rotation2`+`rotation3`*`rotation3`) AS mag
  FROM `world`.`gameobject`
  WHERE `guid` IN (220129,220123,220121,220176,220155,220207,220193)
) t ON g.`guid`=t.`guid`
SET
  g.`rotation0` = g.`rotation0` / t.mag,
  g.`rotation1` = g.`rotation1` / t.mag,
  g.`rotation2` = g.`rotation2` / t.mag,
  g.`rotation3` = g.`rotation3` / t.mag
WHERE t.mag > 0 AND ABS(t.mag-1) > 0.000001;

-- Spellclick data so the core keeps UNIT_NPC_FLAG_SPELLCLICK
INSERT IGNORE INTO `world`.`npc_spellclick_spells`
(`npc_entry`,`spell_id`,`cast_flags`,`user_type`)
VALUES
(271654,46598,1,0),
(271655,46598,1,0);

-- Vendor Kirana
UPDATE `world`.`creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=254436;

-- Core scripts that existed but were unassigned
UPDATE `world`.`creature_template`
SET `ScriptName`='npc_scalecommander_189035'
WHERE `entry`=189035 AND (`ScriptName` IS NULL OR `ScriptName`='');

INSERT IGNORE INTO `world`.`spell_script_names` (`spell_id`,`ScriptName`) VALUES
(30108,'spell_warl_unstable_affliction'),
(316099,'spell_warl_unstable_affliction'),
(342938,'spell_warl_unstable_affliction'),
(31230,'spell_rog_cheat_death'),
(393760,'spell_dru_umbral_embrace'),
(270658,'spell_item_azerite_fortification'),
(280852,'spell_item_azerite_fortification');

UPDATE `world`.`quest_template_addon`
SET `ScriptName`='quest_garrison_shipyard_intro'
WHERE `ID` IN (39422,39423) AND (`ScriptName` IS NULL OR `ScriptName`='');

UPDATE `world`.`quest_template_addon`
SET `ScriptName`='quest_class_order_hall'
WHERE `ID`=44649 AND (`ScriptName` IS NULL OR `ScriptName`='');

-- Slayer's Rise BG: missing WorldSafeLocs + battlemaster list
INSERT IGNORE INTO `world`.`world_safe_locs`
(`ID`,`MapID`,`LocX`,`LocY`,`LocZ`,`Facing`,`Comment`)
VALUES
(1000001,0,-9115,423,96,0,'Slayer''s Rise Alliance Start'),
(1000002,0,-9115,423,96,3.14159,'Slayer''s Rise Horde Start');

UPDATE `world`.`battleground_template`
SET `AllianceStartLoc`=1000001, `HordeStartLoc`=1000002
WHERE `ID`=1141;
