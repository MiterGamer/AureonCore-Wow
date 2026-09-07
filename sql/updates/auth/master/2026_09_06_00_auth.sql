-- Match worldserver.conf WorldServerPort (8095). Base auth SQL still defaults to 8085.
UPDATE `realmlist` SET `port`=8095 WHERE `id`=1;
