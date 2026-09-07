-- Darkmaul Citadel Creatures spawns (Map 2175, Zone 10424, Area 10530)
-- Quelle: sql/old/9.x/world/22082_2022_11_20/2022_09_09_01_world.sql
-- Benötigt für Quest 55988/59979 "Like Ogres to the Slaughter" (8x Ogre Brute 153239 kills)

SET @CGUID := 8002000;

-- ===========================
-- creature (spawns)
-- ===========================
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+28;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 454.729156494140625, -2102.0869140625, 130.526397705078125, 3.068993806838989257, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute
(@CGUID+1, 153581, 2175, 10424, 10530, '0', 0, 0, 0, 1, 509.7882080078125, -1965.4879150390625, 144.52081298828125, 1.031827330589294433, 7200, 0, 0, 279, 0, 0, 0, 0, 0, 45114), -- Grunk
(@CGUID+2, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 467.7725830078125, -2003.888916015625, 143.8871002197265625, 1.62632906436920166, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+3, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 481.30902099609375, -1975.1649169921875, 143.1035308837890625, 4.41829681396484375, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute
(@CGUID+4, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 526.701416015625, -2001.1024169921875, 142.98779296875, 0.027794346213340759, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+5, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 431.08160400390625, -2025.2257080078125, 132.452880859375, 3.692021131515502929, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster (Sleep Zzz)
(@CGUID+6, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 498.973968505859375, -2046.9288330078125, 144.2474365234375, 0.442503392696380615, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+7, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 433.2153, -2065.714, 131.6825, 0.766060471534729003, 7200, 0, 0, 217, 0, 2, 0, 0, 0, 45114), -- Ogre Brute (waypoints)
(@CGUID+8, 153238, 2175, 10424, 10530, '0', 0, 0, 0, 0, 543.55206298828125, -2003.375, 142.649017333984375, 0.492633670568466186, 7200, 0, 0, 50, 0, 0, 0, 0, 0, 45114), -- Tamed Boar
(@CGUID+9, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 533.013916015625, -2079.671875, 158.34222412109375, 5.339074611663818359, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+10, 153238, 2175, 10424, 10530, '0', 0, 0, 0, 0, 542.66668701171875, -1997.77783203125, 142.4593658447265625, 5.80480813980102539, 7200, 0, 0, 50, 0, 0, 0, 0, 0, 45114), -- Tamed Boar
(@CGUID+11, 153238, 2175, 10424, 10530, '0', 0, 0, 0, 0, 540.1107177734375, -2001.9852294921875, 142.73614501953125, 5.420380115509033203, 7200, 4, 0, 50, 0, 1, 0, 0, 0, 45114), -- Tamed Boar (random movement)
(@CGUID+12, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 474.05035400390625, -1932.060791015625, 155.3624725341796875, 5.49060821533203125, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster (Sleep Zzz)
(@CGUID+13, 153238, 2175, 10424, 10530, '0', 0, 0, 0, 0, 539.99957275390625, -1994.472412109375, 142.8594970703125, 2.248490333557128906, 7200, 4, 0, 50, 0, 1, 0, 0, 0, 45114), -- Tamed Boar (random movement)
(@CGUID+14, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 479.986114501953125, -2113.833251953125, 132.5481414794921875, 4.657485008239746093, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute (Sleep Zzz)
(@CGUID+15, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 578.02777099609375, -1979.513916015625, 171.6934051513671875, 1.193202733993530273, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+16, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 578.06768798828125, -2046.3541259765625, 159.592681884765625, 5.034889698028564453, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute (Sleep Zzz)
(@CGUID+17, 153582, 2175, 10424, 10530, '0', 0, 0, 0, 1, 591.78302001953125, -2010.626708984375, 175.675933837890625, 0.113099128007888793, 7200, 0, 0, 248, 382, 0, 0, 0, 0, 45114), -- Wug
(@CGUID+18, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 582.30206298828125, -1974.63720703125, 170.8436126708984375, 5.720551013946533203, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster (Sleep Zzz)
(@CGUID+19, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 559.86456298828125, -2101.833251953125, 161.2359619140625, 1.117576360702514648, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+20, 153238, 2175, 10424, 10530, '0', 0, 0, 0, 0, 595.2257080078125, -2064.536376953125, 161.243377685546875, 0.601261317729949951, 7200, 0, 0, 50, 0, 0, 0, 0, 0, 45114), -- Tamed Boar (Feign Death)
(@CGUID+21, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 592.87152099609375, -2062.473876953125, 160.633148193359375, 5.45097970962524414, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+22, 154103, 2175, 10424, 10530, '0', 0, 0, 0, 0, 599.7882, -2059.458, 159.6127, 2.146738052368164062, 7200, 0, 0, 205, 0, 2, 0, 0, 0, 45114), -- Ogre Chef (waypoints)
(@CGUID+23, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 571.03643798828125, -2105.01220703125, 160.8884735107421875, 4.798206806182861328, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+24, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 603.23089599609375, -2121.41845703125, 158.9243316650390625, 3.034203290939331054, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute
(@CGUID+25, 153242, 2175, 10424, 10530, '0', 0, 0, 0, 0, 649.20660400390625, -2064.651123046875, 159.3798828125, 2.090809583663940429, 7200, 0, 0, 149, 382, 0, 0, 0, 0, 45114), -- Ogre Shadowcaster
(@CGUID+26, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 675.47222900390625, -2036.986083984375, 171.5338134765625, 4.335721492767333984, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114), -- Ogre Brute
(@CGUID+27, 153583, 2175, 10424, 10530, '0', 0, 0, 0, 1, 663.19268798828125, -2127.892333984375, 161.383514404296875, 5.686066150665283203, 7200, 0, 0, 310, 0, 0, 0, 0, 0, 45114), -- Jugnug (Sleep Zzz)
(@CGUID+28, 153239, 2175, 10424, 10530, '0', 0, 0, 0, 1, 732.875, -2071.0869140625, 120.14874267578125, 5.224806785583496093, 7200, 0, 0, 217, 0, 0, 0, 0, 0, 45114); -- Ogre Brute

-- ===========================
-- creature_addon
-- ===========================
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+28;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+14, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Ogre Brute - Sleep Zzz
(@CGUID+0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Ogre Brute
(@CGUID+5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Ogre Shadowcaster - Sleep Zzz
(@CGUID+6, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+3, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Ogre Brute
(@CGUID+2, 0, 0, 0, 0, 28, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+12, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Ogre Shadowcaster - Sleep Zzz
(@CGUID+9, 0, 0, 0, 0, 28, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+23, 0, 0, 8, 0, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+16, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Ogre Brute - Sleep Zzz
(@CGUID+21, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+20, 0, 0, 262144, 1, 0, 0, 0, 0, 0, '145363'), -- Tamed Boar - Permanent Feign Death
(@CGUID+24, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Ogre Brute
(@CGUID+25, 0, 0, 8, 1, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+18, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Ogre Shadowcaster - Sleep Zzz
(@CGUID+15, 0, 0, 8, 1, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+19, 0, 0, 0, 1, 378, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(@CGUID+26, 0, 0, 0, 1, 378, 0, 0, 0, 0, ''), -- Ogre Brute
(@CGUID+7, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Ogre Brute (waypoints)
(@CGUID+22, 0, 0, 0, 0, 0, 0, 0, 0, 0, '299441'); -- Ogre Chef (waypoints)

-- ===========================
-- creature_template_addon
-- ===========================
DELETE FROM `creature_template_addon` WHERE `entry` IN (153583, 153582, 153242, 154103, 153581);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(153583, 0, 0, 0, 1, 0, 0, 0, 0, 0, '145953'), -- Jugnug - Sleep Zzz
(153582, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Wug
(153242, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Ogre Shadowcaster
(154103, 0, 0, 0, 1, 0, 0, 0, 0, 0, '299441'), -- Ogre Chef
(153581, 0, 0, 0, 1, 0, 0, 0, 0, 0, '246849'); -- Grunk

-- ===========================
-- creature_template updates
-- ===========================
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153583; -- Jugnug
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=154103; -- Ogre Chef
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153582; -- Wug
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153238; -- Tamed Boar
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153242; -- Ogre Shadowcaster
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153581; -- Grunk
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `faction`=2057, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=153239; -- Ogre Brute

-- ===========================
-- creature_text (Ogre Chef)
-- ===========================
DELETE FROM `creature_text` WHERE `CreatureID`= 154103;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(154103, 0, 0, 'This gonna be off hook!', 12, 0, 100, 0, 0, 0, 0, 0, 'Ogre Chef'),
(154103, 1, 0, 'Me gonna take everyone on ride to flavor... flavor... uh. Flavor place!', 12, 0, 100, 0, 0, 0, 0, 0, 'Ogre Chef');

-- ===========================
-- Waypoints for Ogre Brute (CGUID+7)
-- ===========================
SET @PATH := (@CGUID+7) * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`) VALUES
(@PATH, 0, 433.2153, -2065.714, 131.6825, NULL, 0),
(@PATH, 1, 421.6146, -2073.545, 127.4143, NULL, 4047),
(@PATH, 2, 433.2153, -2065.714, 131.6825, NULL, 0),
(@PATH, 3, 449.408, -2052.332, 140.1065, NULL, 0),
(@PATH, 4, 457.6042, -2044.446, 143.1766, NULL, 3797),
(@PATH, 5, 449.408, -2052.332, 140.1065, NULL, 0);

DELETE FROM `creature_addon` WHERE `guid` = @CGUID+7;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`) VALUES
(@CGUID+7, @PATH, 1);

-- ===========================
-- Waypoints for Ogre Chef (CGUID+22)
-- ===========================
SET @PATH := (@CGUID+22) * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`) VALUES
(@PATH, 0, 599.7882, -2059.458, 159.6127, NULL, 0),
(@PATH, 1, 601.1042, -2056.816, 159.5922, NULL, 8568),
(@PATH, 2, 592.4792, -2051.382, 159.6127, NULL, 4460),
(@PATH, 3, 604.8143, -2067.198, 159.5378, NULL, 6575);

DELETE FROM `creature_addon` WHERE `guid` = @CGUID+22;
INSERT INTO `creature_addon` (`guid`, `path_id`, `bytes2`, `auras`) VALUES
(@CGUID+22, @PATH, 1, '299441');

-- ===========================
-- SmartAI: Ogre Chef (154103)
-- ===========================
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 154103;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = 154103;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(154103, 0, 0, 0, 34, 0, 100, 0, 2, 1, 0, 0, 80, 15410300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On movement of type WAYPOINT_MOTION_TYPE inform, point 1 - Self: Start timed action list id #15410300'),
(154103, 0, 1, 0, 34, 0, 100, 0, 2, 2, 0, 0, 80, 15410301, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On movement of type WAYPOINT_MOTION_TYPE inform, point 2 - Self: Start timed action list id #15410301'),
(154103, 0, 2, 0, 34, 0, 100, 0, 2, 3, 0, 0, 80, 15410302, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On movement of type WAYPOINT_MOTION_TYPE inform, point 3 - Self: Start timed action list id #15410302');

-- Timed action lists for Ogre Chef
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryOrGuid` IN (15410300, 15410301, 15410302);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(15410300, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 seconds - Self: Set stand state to KNEEL'),
(15410300, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 90, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 6 seconds - Self: Set stand state to STAND'),
(15410300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Talk 1 to Self'),
(15410301, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 17, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 seconds - Self: Set emote state to 69'),
(15410301, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 2 seconds - Self: Set emote state to 0'),
(15410302, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 17, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 seconds - Self: Set emote state to 69'),
(15410302, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 2 seconds - Self: Set emote state to 0'),
(15410302, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Talk 0 to Self');

-- ===========================
-- SmartAI: Ogre Shadowcaster per-spawn (CGUID+4)
-- ===========================
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = -(@CGUID+4);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 153242;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-(@CGUID+4), 0, 0, 0, 1, 0, 100, 0, 0, 0, 7000, 7000, 5, 11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 7 seconds (OOC) - Self: Play emote 11'),
(-(@CGUID+4), 0, 1, 0, 1, 0, 100, 0, 3000, 3000, 7000, 7000, 5, 25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 7 seconds (3s delay) (OOC) - Self: Play emote 25');
