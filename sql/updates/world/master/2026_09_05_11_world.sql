-- Darkmaul ritual fight (sniff 19-16-21, map 2236, encounter 2326).
-- Gor'groth 156814 -> Kalecgos 156501 at ~46%. Leave gossip stays 39497 / 319030.
SET NAMES utf8mb4;

UPDATE `creature_template`
SET `ScriptName` = 'boss_gorgroth',
    `unit_flags` = 33536
WHERE `entry` = 156814;

UPDATE `creature_template`
SET `ScriptName` = 'boss_kalecgos_darkmaul'
WHERE `entry` = 156501;

UPDATE `creature_template`
SET `ScriptName` = 'npc_decaying_corpse_darkmaul'
WHERE `entry` = 156913;

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(308527, 'spell_gorgroth_unstable_shadows');

INSERT IGNORE INTO `creature_text`
(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`)
VALUES
(156501, 1, 0, '|TINTERFACE\\ICONS\\Spell_Necro_Conclave.blp:20|t Avoid Ravnyr''s |cFFFF0404|Hspell:305515|h[Necrotic Breath]|h|r by running behind him!', 42, 0, 100, 0, 0, 0, 0, 0, 0, 'Kalecgos to Player');

INSERT IGNORE INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `Locale`, `Text`) VALUES
(156501, 1, 0, 'deDE', '|TINTERFACE\\ICONS\\Spell_Necro_Conclave.blp:20|t Weicht Ravnyrs |cFFFF0404|Hspell:305515|h[Nekrotischem Hauch]|h|r aus, indem Ihr hinter ihn lauft!');
