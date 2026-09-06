-- Jugnug/Wug/Grunk used TDB spawntimesecs 7200 (2h). After a kill the lieutenants
-- stay dead through a quest reset. Other Exile's Reach hub spawns use 120.
SET NAMES utf8mb4;

UPDATE `creature`
SET `spawntimesecs` = 120
WHERE `map` = 2175 AND `id` IN (153581, 153582, 153583);
