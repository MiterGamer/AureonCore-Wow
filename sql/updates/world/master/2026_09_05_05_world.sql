-- 55879 / 59942 reunion report after Torgok.
-- Spells 305893 (Alliance) and 326678 (Horde) play scene 2341 / 2497.
-- Those rows pointed at leftover packages:
--   2933 = x.x [TMP] Template TEST - IGC
--   4779 = 12.0.0_Arcantina_Arcantina_NishaCyrus_MA
-- Client 12.1.0.69587 SceneScriptPackage 4741 is 11.2.7_[ERA]_ExilesReach_Alliance_IGC
-- (Wrathion/Jaina 302254-302261, Horde 302262-302269 via player conditions 20068/20069).
-- Old CUT broadcast 291011-291013 is unused (no ConversationLine, no VO).
SET NAMES utf8mb4;

UPDATE `scene_template` SET `ScriptPackageID` = 4741 WHERE `SceneId` = 2341 AND `ScriptPackageID` = 2933;
UPDATE `scene_template` SET `ScriptPackageID` = 4741 WHERE `SceneId` = 2497 AND `ScriptPackageID` = 4779;
