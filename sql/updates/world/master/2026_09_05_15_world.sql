-- Quest 55990 / 59981 Controlling their Stones (sniff 19-16-21).
-- Hidden 161300 sits between the 3 ward-stone items and sequenced runes 339865/351476.
-- Quest script credits 161300 when each stone is recovered so the rune step appears.
SET NAMES utf8mb4;

INSERT INTO `quest_template_addon` (`ID`, `ScriptName`) VALUES
(55990, 'quest_controlling_their_stones'),
(59981, 'quest_controlling_their_stones')
ON DUPLICATE KEY UPDATE `ScriptName` = 'quest_controlling_their_stones';

UPDATE `gameobject_template`
SET `Data10` = 314180
WHERE `entry` = 351476 AND `Data10` = 0;
