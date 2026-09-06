-- 156501 Ravnyr display 114576 (sniff 19-16-21 CreateObject1 map 2236).
-- Packet BoundingRadius 15.61837482452392578 CombatReach 8 DisplayScale 0.8.
-- Creature::SetDisplayId multiplies creature_model_info by DisplayScale, so store unscaled.
SET NAMES utf8mb4;

UPDATE `creature_model_info`
SET `BoundingRadius` = 19.522968530654907225,
    `CombatReach` = 10,
    `VerifiedBuild` = 69587
WHERE `DisplayID` = 114576;
