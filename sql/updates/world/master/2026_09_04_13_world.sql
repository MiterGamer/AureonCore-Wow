-- Small Boar 156808 model 138759 from sniff 19-16-21.
-- QUERY_CREATURE_RESPONSE + CreateObject1: DisplayID 138759, DisplayScale 0.1,
-- BoundingRadius 2.104585170745849609, CombatReach 1.346938848495483398.
-- Same DisplayID is also used by Mudsnout Piglet 132820 (TDB 65655).
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

DELETE FROM `creature_model_info` WHERE `DisplayID` = 138759;
INSERT INTO `creature_model_info`
(`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`)
VALUES
(138759, 2.104585170745849609, 1.346938848495483398, 0, 69587);

UPDATE `creature_template_model`
SET `DisplayScale` = 0.100000001490116119, `VerifiedBuild` = 69587
WHERE `CreatureID` = 156808 AND `Idx` = 0;
