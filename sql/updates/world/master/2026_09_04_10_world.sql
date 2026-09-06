-- Rescue of Meredy 55763: Bloodbeak is summoned during the event, not a world spawn
-- (warcraft.wiki.gg + sniff dump_12.1.0.69587_2026-09-04_17-00-16).
-- Conversations 11738/11739 from the sniff (Kee-La/Henry). Swooping Lunge 317561 on Bloodbeak.
-- Cole / 160664 / 13753 untouched.
SET NAMES utf8mb4;

DELETE FROM `creature` WHERE `guid` = 8000932 AND `id` = 153964;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_henry_garrick_rescue_helper' WHERE `entry` = 155197;

DELETE FROM `creature_template_spell` WHERE `CreatureID` = 153964 AND `Spell` = 317561;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(153964, 0, 317561, 0);

DELETE FROM `conversation_template` WHERE `Id` IN (11738, 11739);
INSERT INTO `conversation_template` (`Id`, `FirstLineId`, `TextureKitId`, `Flags`, `ScriptName`, `VerifiedBuild`) VALUES
(11738, 29526, 0, 0, '', 0),
(11739, 28397, 0, 0, '', 0);

DELETE FROM `conversation_actors` WHERE `ConversationId` IN (11738, 11739);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(11738, 70729, 0, 0, 155199, 0, 0, 0, 0),
(11738, 70728, 0, 1, 155197, 0, 0, 0, 0),
(11739, 70729, 0, 0, 155199, 0, 0, 0, 0),
(11739, 70728, 0, 1, 155197, 0, 0, 0, 0);

DELETE FROM `conversation_line_template` WHERE `Id` IN (29526, 29527, 28395, 28397, 28398);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `ChatType`, `VerifiedBuild`) VALUES
(29526, 0, 0, 0, 0, 0),
(29527, 0, 0, 0, 0, 0),
(28395, 0, 1, 0, 0, 0),
(28397, 0, 0, 0, 0, 0),
(28398, 0, 1, 0, 0, 0);
