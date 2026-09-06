-- Hrun's Barrow / Darkmaul PLAY_SCENE auras brick 12.1 clients (UI gone, no input).
-- Spell 312605 = Hrun's Barrow ambience scene (package 2773, not in 12.1).
-- Spells 321690-321693 = Darkmaul ritual beam scenes (packages 2822-2825).
-- Keep the spell_area rows; only stop AUTOCAST (0x1). AUTOREMOVE (0x2) stays.
UPDATE `spell_area` SET `flags` = `flags` & ~1
WHERE `spell` IN (312605, 321690, 321691, 321692, 321693);
