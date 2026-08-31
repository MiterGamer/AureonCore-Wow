-- WCDB left quest_template_addon.ScriptName empty for Exile's Reach.
-- Stand Your Ground hid world Cole/Throg on accept (creature AI) but never
-- showed them again, because OnQuestStatusChange never ran.
SET NAMES utf8mb4;

-- Ship
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'q56775_warming_up' WHERE `ID` = 56775;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'q59926_warming_up' WHERE `ID` = 59926;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_stand_your_ground' WHERE `ID` IN (58209, 59927);
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_brace_for_impact' WHERE `ID` IN (58208, 59928);

-- Beach / camp / island (same missing-ScriptName class of bugs)
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_finding_the_lost_expedition_alliance' WHERE `ID` = 54952;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_finding_the_lost_expedition_horde' WHERE `ID` = 59931;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_cooking_meat_alliance' WHERE `ID` = 55174;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_cooking_meat_horde' WHERE `ID` = 59932;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_enhanced_combat_tactics' WHERE `ID` IN (59254, 59339, 59933, 59934);
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_northbound_alliance' WHERE `ID` = 55173;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_northbound_horde' WHERE `ID` = 59935;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_taming_the_wilds_alliance' WHERE `ID` = 59342;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_taming_the_wilds_horde' WHERE `ID` = 59937;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_briarpatch_alliance' WHERE `ID` IN (55186, 55184);
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_briarpatch_horde' WHERE `ID` IN (59938, 59939);
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_scout_o_matic_5000' WHERE `ID` = 55193;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_choppy_booster_mk5' WHERE `ID` = 59940;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_resizing_the_situation_alliance' WHERE `ID` = 56034;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_resizing_the_situation_horde' WHERE `ID` = 59941;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_ride_of_the_scientifically_enhanced_boar' WHERE `ID` = 55879;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_the_re_deather' WHERE `ID` = 59942;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_westward_bound_alliance' WHERE `ID` = 55965;
UPDATE `world`.`quest_template_addon` SET `ScriptName` = 'quest_westward_bound_horde' WHERE `ID` = 59948;
