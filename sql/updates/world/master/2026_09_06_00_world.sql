-- Exile's Reach / Darkmaul templates from Alliance sniff
-- dump_12.1.0.69587_2026-09-05_19-26-03_parsed-exile-alli.txt (build 69587).
-- 156501 CreateObject1: Display 114576, AiID 11415, HoverHeight 1, BoundingRadius 15.618
-- (unscaled 19.523 * DisplayScale 0.8), CombatReach 8, Faction 16, Flags 33587520.
-- HoverInitiallyEnabled keeps terrace Z 248.68; GetFloorZ on 2236 hits Font of Shadows ~181.
SET NAMES utf8mb4;

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (156501, 156814, 165198);
INSERT INTO `creature_template_movement` (`CreatureId`, `HoverInitiallyEnabled`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(156501, 1, NULL, NULL, NULL),
(156814, 1, NULL, NULL, NULL),
(165198, 1, NULL, NULL, NULL);

DELETE FROM `creature_template_addon` WHERE `entry` = 156501;
INSERT INTO `creature_template_addon`
(`entry`, `PathId`, `mount`, `MountCreatureID`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`,
 `PvPFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`)
VALUES
(156501, 0, 0, 0, 0, 0, 0, 1, 0, 0, 11415, 0, 0, 3, NULL);

DELETE FROM `creature_template_model` WHERE `CreatureID` = 156501;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(156501, 0, 75614, 1, 0, 69587),
(156501, 1, 114576, 0.8, 1, 69587);

DELETE FROM `creature_model_info` WHERE `DisplayID` = 114576;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(114576, 19.522968530654907, 10, 0, 69587);

DELETE FROM `creature_text` WHERE `CreatureID` = 156501 AND `GroupID` = 1;
INSERT INTO `creature_text`
(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`,
 `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`)
VALUES
(156501, 1, 0, '|TINTERFACE\\ICONS\\Spell_Necro_Conclave.blp:20|t Avoid Ravnyr''s |cFFFF0404|Hspell:305515|h[Necrotic Breath]|h|r by running behind him!', 42, 0, 100, 0, 0, 0, 0, 0, 0, 'Ravnyr necrotic breath warning');

DELETE FROM `creature_text_locale` WHERE `CreatureID` = 156501 AND `GroupID` = 1 AND `ID` = 0 AND `Locale` = 'deDE';
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `Locale`, `Text`) VALUES
(156501, 1, 0, 'deDE', '|TINTERFACE\\ICONS\\Spell_Necro_Conclave.blp:20|t Weicht Ravnyrs |cFFFF0404|Hspell:305515|h[Nekrotischem Hauch]|h|r aus, indem Ihr hinter ihn lauft!');

DELETE FROM `spell_script_names` WHERE `spell_id` = 308527 AND `ScriptName` = 'spell_gorgroth_unstable_shadows';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(308527, 'spell_gorgroth_unstable_shadows');

DELETE FROM `spell_script_names` WHERE `spell_id` = 314180 AND `ScriptName` = 'spell_disable_ogre_runestone';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(314180, 'spell_disable_ogre_runestone');

DELETE FROM `creature_template_gossip` WHERE `CreatureID` = 156501;
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(156501, 39497, 69587);

UPDATE `creature_template` SET `ScriptName` = 'boss_ravnyr', `unit_flags` = 33587520 WHERE `entry` = 156501;
UPDATE `creature_template` SET `ScriptName` = 'boss_gorgroth', `unit_flags` = 33536 WHERE `entry` = 156814;
UPDATE `creature_template` SET `ScriptName` = 'npc_decaying_corpse_darkmaul' WHERE `entry` = 156913;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkmaul_companion', `faction` = 1665 WHERE `entry` IN (161350, 161504, 245401);
UPDATE `creature_template` SET `ScriptName` = 'npc_ogre_runestone_stalker', `unit_flags` = 256 WHERE `entry` = 161306;
