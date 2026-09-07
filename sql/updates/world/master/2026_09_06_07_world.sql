-- Midnight: core-race starters go to Exile's Reach. Kill legacy starter valleys
-- (not whole Elwynn/Durotar/Eversong). Do not touch DK 609 / DH 1481 / Allied maps.
SET NAMES utf8mb4;

-- Quests offered by NPCs that only live in these starter pockets.
INSERT IGNORE INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`)
SELECT DISTINCT 1, `qs`.`quest`, 0, '', '', 'Legacy racial starter (Exile''s Reach only)'
FROM `creature_queststarter` `qs`
WHERE `qs`.`id` IN (
    SELECT DISTINCT `id` FROM `creature` WHERE
        `map` IN (648, 654)
        OR (`map` = 0 AND `position_x` BETWEEN -9100 AND -8700 AND `position_y` BETWEEN -400 AND 200)
        OR (`map` = 0 AND `position_x` BETWEEN -6450 AND -6000 AND `position_y` BETWEEN 200 AND 500)
        OR (`map` = 0 AND `position_x` BETWEEN -5200 AND -4800 AND `position_y` BETWEEN 700 AND 1050)
        OR (`map` = 0 AND `position_x` BETWEEN 1550 AND 1900 AND `position_y` BETWEEN 1550 AND 1900)
        OR (`map` = 1 AND `position_x` BETWEEN -800 AND -400 AND `position_y` BETWEEN -4450 AND -4000)
        OR (`map` = 1 AND `position_x` BETWEEN -3100 AND -2700 AND `position_y` BETWEEN -400 AND -100)
        OR (`map` = 1 AND `position_x` BETWEEN -1400 AND -1000 AND `position_y` BETWEEN -5450 AND -5050)
        OR (`map` = 1 AND `position_x` BETWEEN 10100 AND 10500 AND `position_y` BETWEEN 600 AND 1100)
        OR (`map` = 530 AND `position_x` BETWEEN 10200 AND 10550 AND `position_y` BETWEEN -6550 AND -6150)
        OR (`map` = 530 AND `position_x` BETWEEN -4160 AND -3760 AND `position_y` BETWEEN -14130 AND -13730)
        OR (`areaId` IN (9, 132, 188, 220, 154, 363, 3431, 3526, 4755, 4756, 4757, 4761))
);

DELETE `ca` FROM `creature_addon` `ca`
INNER JOIN `creature` `c` ON `c`.`guid` = `ca`.`guid`
WHERE
    `c`.`map` IN (648, 654)
    OR (`c`.`map` = 0 AND `c`.`position_x` BETWEEN -9100 AND -8700 AND `c`.`position_y` BETWEEN -400 AND 200)
    OR (`c`.`map` = 0 AND `c`.`position_x` BETWEEN -6450 AND -6000 AND `c`.`position_y` BETWEEN 200 AND 500)
    OR (`c`.`map` = 0 AND `c`.`position_x` BETWEEN -5200 AND -4800 AND `c`.`position_y` BETWEEN 700 AND 1050)
    OR (`c`.`map` = 0 AND `c`.`position_x` BETWEEN 1550 AND 1900 AND `c`.`position_y` BETWEEN 1550 AND 1900)
    OR (`c`.`map` = 1 AND `c`.`position_x` BETWEEN -800 AND -400 AND `c`.`position_y` BETWEEN -4450 AND -4000)
    OR (`c`.`map` = 1 AND `c`.`position_x` BETWEEN -3100 AND -2700 AND `c`.`position_y` BETWEEN -400 AND -100)
    OR (`c`.`map` = 1 AND `c`.`position_x` BETWEEN -1400 AND -1000 AND `c`.`position_y` BETWEEN -5450 AND -5050)
    OR (`c`.`map` = 1 AND `c`.`position_x` BETWEEN 10100 AND 10500 AND `c`.`position_y` BETWEEN 600 AND 1100)
    OR (`c`.`map` = 530 AND `c`.`position_x` BETWEEN 10200 AND 10550 AND `c`.`position_y` BETWEEN -6550 AND -6150)
    OR (`c`.`map` = 530 AND `c`.`position_x` BETWEEN -4160 AND -3760 AND `c`.`position_y` BETWEEN -14130 AND -13730)
    OR (`c`.`areaId` IN (9, 132, 188, 220, 154, 363, 3431, 3526, 4755, 4756, 4757, 4761));

DELETE FROM `creature` WHERE
    `map` IN (648, 654)
    OR (`map` = 0 AND `position_x` BETWEEN -9100 AND -8700 AND `position_y` BETWEEN -400 AND 200)
    OR (`map` = 0 AND `position_x` BETWEEN -6450 AND -6000 AND `position_y` BETWEEN 200 AND 500)
    OR (`map` = 0 AND `position_x` BETWEEN -5200 AND -4800 AND `position_y` BETWEEN 700 AND 1050)
    OR (`map` = 0 AND `position_x` BETWEEN 1550 AND 1900 AND `position_y` BETWEEN 1550 AND 1900)
    OR (`map` = 1 AND `position_x` BETWEEN -800 AND -400 AND `position_y` BETWEEN -4450 AND -4000)
    OR (`map` = 1 AND `position_x` BETWEEN -3100 AND -2700 AND `position_y` BETWEEN -400 AND -100)
    OR (`map` = 1 AND `position_x` BETWEEN -1400 AND -1000 AND `position_y` BETWEEN -5450 AND -5050)
    OR (`map` = 1 AND `position_x` BETWEEN 10100 AND 10500 AND `position_y` BETWEEN 600 AND 1100)
    OR (`map` = 530 AND `position_x` BETWEEN 10200 AND 10550 AND `position_y` BETWEEN -6550 AND -6150)
    OR (`map` = 530 AND `position_x` BETWEEN -4160 AND -3760 AND `position_y` BETWEEN -14130 AND -13730)
    OR (`areaId` IN (9, 132, 188, 220, 154, 363, 3431, 3526, 4755, 4756, 4757, 4761));

DELETE `ga` FROM `gameobject_addon` `ga`
INNER JOIN `gameobject` `g` ON `g`.`guid` = `ga`.`guid`
WHERE
    `g`.`map` IN (648, 654)
    OR (`g`.`map` = 0 AND `g`.`position_x` BETWEEN -9100 AND -8700 AND `g`.`position_y` BETWEEN -400 AND 200)
    OR (`g`.`map` = 0 AND `g`.`position_x` BETWEEN -6450 AND -6000 AND `g`.`position_y` BETWEEN 200 AND 500)
    OR (`g`.`map` = 0 AND `g`.`position_x` BETWEEN -5200 AND -4800 AND `g`.`position_y` BETWEEN 700 AND 1050)
    OR (`g`.`map` = 0 AND `g`.`position_x` BETWEEN 1550 AND 1900 AND `g`.`position_y` BETWEEN 1550 AND 1900)
    OR (`g`.`map` = 1 AND `g`.`position_x` BETWEEN -800 AND -400 AND `g`.`position_y` BETWEEN -4450 AND -4000)
    OR (`g`.`map` = 1 AND `g`.`position_x` BETWEEN -3100 AND -2700 AND `g`.`position_y` BETWEEN -400 AND -100)
    OR (`g`.`map` = 1 AND `g`.`position_x` BETWEEN -1400 AND -1000 AND `g`.`position_y` BETWEEN -5450 AND -5050)
    OR (`g`.`map` = 1 AND `g`.`position_x` BETWEEN 10100 AND 10500 AND `g`.`position_y` BETWEEN 600 AND 1100)
    OR (`g`.`map` = 530 AND `g`.`position_x` BETWEEN 10200 AND 10550 AND `g`.`position_y` BETWEEN -6550 AND -6150)
    OR (`g`.`map` = 530 AND `g`.`position_x` BETWEEN -4160 AND -3760 AND `g`.`position_y` BETWEEN -14130 AND -13730)
    OR (`g`.`areaId` IN (9, 132, 188, 220, 154, 363, 3431, 3526, 4755, 4756, 4757, 4761));

DELETE FROM `gameobject` WHERE
    `map` IN (648, 654)
    OR (`map` = 0 AND `position_x` BETWEEN -9100 AND -8700 AND `position_y` BETWEEN -400 AND 200)
    OR (`map` = 0 AND `position_x` BETWEEN -6450 AND -6000 AND `position_y` BETWEEN 200 AND 500)
    OR (`map` = 0 AND `position_x` BETWEEN -5200 AND -4800 AND `position_y` BETWEEN 700 AND 1050)
    OR (`map` = 0 AND `position_x` BETWEEN 1550 AND 1900 AND `position_y` BETWEEN 1550 AND 1900)
    OR (`map` = 1 AND `position_x` BETWEEN -800 AND -400 AND `position_y` BETWEEN -4450 AND -4000)
    OR (`map` = 1 AND `position_x` BETWEEN -3100 AND -2700 AND `position_y` BETWEEN -400 AND -100)
    OR (`map` = 1 AND `position_x` BETWEEN -1400 AND -1000 AND `position_y` BETWEEN -5450 AND -5050)
    OR (`map` = 1 AND `position_x` BETWEEN 10100 AND 10500 AND `position_y` BETWEEN 600 AND 1100)
    OR (`map` = 530 AND `position_x` BETWEEN 10200 AND 10550 AND `position_y` BETWEEN -6550 AND -6150)
    OR (`map` = 530 AND `position_x` BETWEEN -4160 AND -3760 AND `position_y` BETWEEN -14130 AND -13730)
    OR (`areaId` IN (9, 132, 188, 220, 154, 363, 3431, 3526, 4755, 4756, 4757, 4761));
