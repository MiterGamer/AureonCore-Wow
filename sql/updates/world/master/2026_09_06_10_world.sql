-- gossip_menu TextID 0 is rejected (no npc_text). Use existing text 1 so menus 39219/39497 load.
SET NAMES utf8mb4;

UPDATE `gossip_menu` SET `TextID` = 1 WHERE `MenuID` IN (39219, 39497) AND `TextID` = 0;
