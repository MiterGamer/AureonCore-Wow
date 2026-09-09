-- Brace for Impact (58208 / 59928): do not auto-complete on accept.
-- Player must follow Jaina/Grimaxe below deck and talk. Walk paths 10505890/91
-- and 10501910/11 were missing. Conversations 14422-14424 need actor slot 1.
SET NAMES utf8mb4;

-- Talk-to objective so the quest stays incomplete until Jaina is spoken to below
DELETE FROM `world`.`quest_objectives` WHERE `ID` IN (40740002, 40740003);
INSERT INTO `world`.`quest_objectives`
(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `ConditionalAmount`,
 `Flags`, `Flags2`, `ProgressBarWeight`, `ParentObjectiveID`, `Visible`, `Description`, `VerifiedBuild`)
VALUES
(40740002, 58208, 3, 0, 0, 156280, 1, 0, 0, 0, 0, 0, 1, 'Speak with Lady Jaina Proudmoore', 0),
(40740003, 59928, 3, 0, 0, 166827, 1, 0, 0, 0, 0, 0, 1, 'Speak with Warlord Breka Grimaxe', 0);

-- Alliance: reverse of path 10501451 (lower -> upper)
DELETE FROM `world`.`waypoint_path` WHERE `PathId` IN (10505890, 10505891);
INSERT INTO `world`.`waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(10505890, 1, 0, NULL, 'Garrick/Jaina Brace for Impact - from upper deck'),
(10505891, 1, 0, NULL, 'Garrick/Jaina Brace for Impact - to lower deck');

DELETE FROM `world`.`waypoint_path_node` WHERE `PathId` IN (10505890, 10505891);
INSERT INTO `world`.`waypoint_path_node`
(`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`)
VALUES
(10505890, 1,  37.8325,  -1.40552, 12.5017, NULL, 0),
(10505890, 2,  37.7061,  -3.77966, 12.0207, NULL, 0),
(10505890, 3,  30.1978,  -3.65973, 11.0243, NULL, 0),
(10505891, 1,  21.1978,  -4.65973,  9.77431, NULL, 0),
(10505891, 2,  18.9478,  -5.40973,  9.27431, NULL, 0),
(10505891, 3,  15.9478,  -5.40973,  6.27431, NULL, 0),
(10505891, 4,  12.4478,  -5.15973,  5.52431, NULL, 0),
(10505891, 5,   8.69775, -4.15973,  5.52431, NULL, 0),
(10505891, 6,   4.69775, -2.65973,  5.52431, NULL, 0),
(10505891, 7,  -0.302246,-1.40973,  5.77431, NULL, 0),
(10505891, 8,  -3.18101, -0.729888, 5.29829, NULL, 0);

-- Horde: reverse of path 10501901
DELETE FROM `world`.`waypoint_path` WHERE `PathId` IN (10501910, 10501911);
INSERT INTO `world`.`waypoint_path` (`PathId`, `MoveType`, `Flags`, `Velocity`, `Comment`) VALUES
(10501910, 1, 0, NULL, 'Grimaxe Brace for Impact - from upper deck'),
(10501911, 1, 0, NULL, 'Grimaxe Brace for Impact - to lower deck');

DELETE FROM `world`.`waypoint_path_node` WHERE `PathId` IN (10501910, 10501911);
INSERT INTO `world`.`waypoint_path_node`
(`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `Delay`)
VALUES
(10501910, 1, 45.5635, -3.42236, 39.7773, NULL, 0),
(10501910, 2, 40.9807, -4.75171, 36.0284, NULL, 0),
(10501910, 3, 35.4807, -6.75171, 33.5284, NULL, 0),
(10501911, 1, 29.7307, -5.75171, 27.5284, NULL, 0),
(10501911, 2, 24.4807,  0.248291, 26.5284, NULL, 0),
(10501911, 3, 18.4807,  3.24829, 22.0284, NULL, 0),
(10501911, 4, 15.2307,  5.49829, 18.7784, NULL, 0),
(10501911, 5, 12.4807,  9.49829, 17.7784, NULL, 0),
(10501911, 6,  6.73071, 11.7483, 12.2784, NULL, 0),
(10501911, 7,  2.48071,  9.49829,  9.52843, NULL, 0),
(10501911, 8,-10.7693,  2.16289,  8.80811, NULL, 0);

-- Spar conversations: line 2 uses ActorIdx 1
DELETE FROM `world`.`conversation_actors` WHERE `ConversationId` IN (14422, 14423, 14424);
INSERT INTO `world`.`conversation_actors`
(`ConversationId`, `ConversationActorId`, `ConversationActorGuid`,
 `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`)
VALUES
(14422, 68598, 0, 0, 0, 0, 0, 0, 0),
(14422, 68598, 0, 1, 0, 0, 0, 0, 0),
(14423, 68598, 0, 0, 0, 0, 0, 0, 0),
(14423, 68598, 0, 1, 0, 0, 0, 0, 0),
(14424, 68598, 0, 0, 0, 0, 0, 0, 0),
(14424, 68598, 0, 1, 0, 0, 0, 0, 0);
