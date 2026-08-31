-- Brace for Impact (58208/59928): RewardSpell dest often fails; movie-complete
-- spells 305446/325133 had no spell_target_position, so the player stays at the
-- ship transport world pos on map 2175 instead of the beach.
-- Also: Hrun invisible (#704), Fargodeep Mine objective Amount 0 (#695).
SET NAMES utf8mb4;

DELETE FROM `world`.`spell_target_position` WHERE `ID` IN (305446,325133,305464,325136);
INSERT INTO `world`.`spell_target_position`
(`ID`, `EffectIndex`, `OrderIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `VerifiedBuild`)
VALUES
(305446, 0, 0, 2175, -446.1, -2607.1, 0.48, 0.103, 0),
(325133, 0, 0, 2175, -462.4, -2619.8, 0.40, 0.103, 0),
(305464, 0, 0, 2175, -446.1, -2607.1, 0.48, 0.103, 0),
(325136, 0, 0, 2175, -462.4, -2619.8, 0.40, 0.103, 0);

-- #704 Who Lurks in the Pit: Hrun model hidden (phase 13834 has no phase_area;
-- template aura 322352 is a hide-model DNT).
UPDATE `world`.`creature` SET `PhaseId` = 0 WHERE `guid` = 64049 AND `id` = 156900;
UPDATE `world`.`creature_template_addon` SET `auras` = '' WHERE `entry` = 156900;
UPDATE `world`.`creature_template` SET `ScriptName` = '' WHERE `entry` = 156900 AND `ScriptName` = 'npc_exiles_reach_hruns_barrow_156900';

-- #695 The Fargodeep Mine: Type 10 objective had ObjectID -1 and Amount 0, so
-- the client toast fired but the quest never completed. AT 88 is the mine.
UPDATE `world`.`quest_objectives`
SET `ObjectID` = 88, `Amount` = 1
WHERE `ID` = 252033 AND `QuestID` = 62;
