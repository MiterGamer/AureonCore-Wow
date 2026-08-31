-- Exile's Reach: "Kampftechniken für Fortgeschrittene" / Enhanced Combat Tactics
-- 59339 / 59934 are Monk (Tiger Palm + Blackout Kick).
-- 59254 / 59933 are the generic spar. Both were offered to every class.
-- Class mask: Monk = 512; all current classes except Monk = 8191 - 512 = 7679.
SET NAMES utf8mb4;

UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 7679, `ExclusiveGroup` = 59254
WHERE `ID` = 59254;

UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 512, `ExclusiveGroup` = 59254
WHERE `ID` = 59339;

UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 7679, `ExclusiveGroup` = 59933
WHERE `ID` = 59933;

UPDATE `world`.`quest_template_addon`
SET `AllowableClasses` = 512, `ExclusiveGroup` = 59933
WHERE `ID` = 59934;
