-- Quest 55879 "Ride of the Scientifically Enhanced Boar"
-- Objective counts 165150 (no world spawns). Visible mobs are 157091 with
-- UNIT_FLAG_IMMUNE_TO_PC (64), so they cannot be killed on foot if the boar
-- vehicle does not apply. Remove immunity and credit 165150 on death.
SET NAMES utf8mb4;

UPDATE `world`.`creature_template`
SET
  `unit_flags` = `unit_flags` & ~64,
  `KillCredit1` = 165150
WHERE `entry` = 157091;
