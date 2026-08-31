-- SmartAI Cleanup: Delete actions with non-existent spells
-- These are old Vanilla/TBC spell ranks that no longer exist in current DBC
-- The server skips them anyway - deleting removes the warnings

-- ============================================================================
-- 1. Delete SMART_ACTION_CAST (11) with non-existent spells
-- ============================================================================

-- Entry 1046: Spells 15242, 14145, 15230
DELETE FROM smart_scripts WHERE entryorguid = 1046 AND source_type = 0 AND id IN (0, 2, 3) AND action_type = 11;

-- Entry 1364: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 1364 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 1789: Spell 14887
DELETE FROM smart_scripts WHERE entryorguid = 1789 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 1794: Spell 14887
DELETE FROM smart_scripts WHERE entryorguid = 1794 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 2417: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 2417 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 2605: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 2605 AND source_type = 0 AND id = 4 AND action_type = 11;

-- Entry 3671: Spell 2
DELETE FROM smart_scripts WHERE entryorguid = 3671 AND source_type = 0 AND id = 8 AND action_type = 11;

-- Entry 4016: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 4016 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 4306: Spell 37668
DELETE FROM smart_scripts WHERE entryorguid = 4306 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 4334: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 4334 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 4515: Spell 15785
DELETE FROM smart_scripts WHERE entryorguid = 4515 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 4848: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 4848 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 5648: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 5648 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 5715: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 5715 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 5771: Spell 20787
DELETE FROM smart_scripts WHERE entryorguid = 5771 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 5862: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 5862 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 6584: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 6584 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 7111: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 7111 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 7372: Spell 20787
DELETE FROM smart_scripts WHERE entryorguid = 7372 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 7428: Spell 18368
DELETE FROM smart_scripts WHERE entryorguid = 7428 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 7606: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 7606 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 7666: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 7666 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 7789: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 7789 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 8444: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 8444 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 8900: Spell 13748
DELETE FROM smart_scripts WHERE entryorguid = 8900 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 8904: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 8904 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 8909: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 8909 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 8910: Spell 20787
DELETE FROM smart_scripts WHERE entryorguid = 8910 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 8912: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 8912 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 8913: Spell 13748
DELETE FROM smart_scripts WHERE entryorguid = 8913 AND source_type = 0 AND id = 7 AND action_type = 11;

-- Entry 9029: Spell 15245
DELETE FROM smart_scripts WHERE entryorguid = 9029 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 9045: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 9045 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 9098: Spells 13748, 15785
DELETE FROM smart_scripts WHERE entryorguid = 9098 AND source_type = 0 AND id IN (0, 1) AND action_type = 11;

-- Entry 9217: Spell 15230
DELETE FROM smart_scripts WHERE entryorguid = 9217 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 9261: Spell 14887
DELETE FROM smart_scripts WHERE entryorguid = 9261 AND source_type = 0 AND id = 4 AND action_type = 11;

-- Entry 9262: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 9262 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 9442: Spell 15230
DELETE FROM smart_scripts WHERE entryorguid = 9442 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 9451: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 9451 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 9517: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 9517 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 9693: Spell 13748
DELETE FROM smart_scripts WHERE entryorguid = 9693 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 9860: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 9860 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 10081: Spell 12251
DELETE FROM smart_scripts WHERE entryorguid = 10081 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 10390: Spells 16799, 37361
DELETE FROM smart_scripts WHERE entryorguid = 10390 AND source_type = 0 AND id IN (1, 4) AND action_type = 11;

-- Entry 10393: Spells 16799, 15230
DELETE FROM smart_scripts WHERE entryorguid = 10393 AND source_type = 0 AND id IN (1, 3) AND action_type = 11;

-- Entry 10422: Spells 15230, 14145
DELETE FROM smart_scripts WHERE entryorguid = 10422 AND source_type = 0 AND id IN (2, 4) AND action_type = 11;

-- Entry 10425: Spell 17145
DELETE FROM smart_scripts WHERE entryorguid = 10425 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 10426: Spell 15785
DELETE FROM smart_scripts WHERE entryorguid = 10426 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 10477: Spell 14887
DELETE FROM smart_scripts WHERE entryorguid = 10477 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 11257: Spell 17145
DELETE FROM smart_scripts WHERE entryorguid = 11257 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 11383: Spell 14887
DELETE FROM smart_scripts WHERE entryorguid = 11383 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 11444: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 11444 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 11459: Spell 28858
DELETE FROM smart_scripts WHERE entryorguid = 11459 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 11462: Spell 18368
DELETE FROM smart_scripts WHERE entryorguid = 11462 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 11471: Spell 16799
DELETE FROM smart_scripts WHERE entryorguid = 11471 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 11484: Spell 15230
DELETE FROM smart_scripts WHERE entryorguid = 11484 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 11492: Spell 22128
DELETE FROM smart_scripts WHERE entryorguid = 11492 AND source_type = 0 AND id = 10 AND action_type = 11;

-- Entry 11622: Spell 18368
DELETE FROM smart_scripts WHERE entryorguid = 11622 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 11838: Spell 37361
DELETE FROM smart_scripts WHERE entryorguid = 11838 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 12378: Spell 13748
DELETE FROM smart_scripts WHERE entryorguid = 12378 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 12396: Spell 20812
DELETE FROM smart_scripts WHERE entryorguid = 12396 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 13096: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13096 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13099: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13099 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13197: Spell 15230
DELETE FROM smart_scripts WHERE entryorguid = 13197 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 13443: Spell 22128
DELETE FROM smart_scripts WHERE entryorguid = 13443 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 13540: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13540 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13541: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13541 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13542: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13542 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13546: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13546 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13547: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13547 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 13548: Spells 15242, 14145
DELETE FROM smart_scripts WHERE entryorguid = 13548 AND source_type = 0 AND id IN (1, 2) AND action_type = 11;

-- Entry 14303: Spell 22695
DELETE FROM smart_scripts WHERE entryorguid = 14303 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 14354: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 14354 AND source_type = 0 AND id = 20 AND action_type = 11;

-- Entry 15273: Spell 37361
DELETE FROM smart_scripts WHERE entryorguid = 15273 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 15274: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 15274 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 15537: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 15537 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 15648: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 15648 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 15966: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 15966 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 16331: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 16331 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 16521: Spell 25602
DELETE FROM smart_scripts WHERE entryorguid = 16521 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 16523: Spell 36054
DELETE FROM smart_scripts WHERE entryorguid = 16523 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 17309: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 17309 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 17395: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 17395 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 17477: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 17477 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 17540: Spell 15785
DELETE FROM smart_scripts WHERE entryorguid = 17540 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 17669: Spell 35942
DELETE FROM smart_scripts WHERE entryorguid = 17669 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 17694: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 17694 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 17723: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 17723 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 17724: Spell 37956
DELETE FROM smart_scripts WHERE entryorguid = 17724 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 17729: Spell 39413
DELETE FROM smart_scripts WHERE entryorguid = 17729 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 17771: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 17771 AND source_type = 0 AND id = 6 AND action_type = 11;

-- Entry 17871: Spell 32329
DELETE FROM smart_scripts WHERE entryorguid = 17871 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 17892: Spell 15230
DELETE FROM smart_scripts WHERE entryorguid = 17892 AND source_type = 0 AND id = 7 AND action_type = 11;

-- Entry 17938: Spell 37668
DELETE FROM smart_scripts WHERE entryorguid = 17938 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 18105: Spell 34267
DELETE FROM smart_scripts WHERE entryorguid = 18105 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 18309: Spell 34920
DELETE FROM smart_scripts WHERE entryorguid = 18309 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 18312: Spell 37668
DELETE FROM smart_scripts WHERE entryorguid = 18312 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 18315: Spells 34920, 17145, 38064
DELETE FROM smart_scripts WHERE entryorguid = 18315 AND source_type = 0 AND id IN (2, 3, 4) AND action_type = 11;

-- Entry 18331: Spells 34942, 34930, 34931
DELETE FROM smart_scripts WHERE entryorguid = 18331 AND source_type = 0 AND id IN (3, 4, 5) AND action_type = 11;

-- Entry 18634: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 18634 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 18637: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 18637 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 18685: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 18685 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 18794: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 18794 AND source_type = 0 AND id = 12 AND action_type = 11;

-- Entry 18994: Spell 34920
DELETE FROM smart_scripts WHERE entryorguid = 18994 AND source_type = 0 AND id = 7 AND action_type = 11;

-- Entry 19016: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 19016 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 19191: Spell 15245
DELETE FROM smart_scripts WHERE entryorguid = 19191 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 19306: Spells 15785, 25602
DELETE FROM smart_scripts WHERE entryorguid = 19306 AND source_type = 0 AND id IN (0, 1) AND action_type = 11;

-- Entry 19354: Spell 15245
DELETE FROM smart_scripts WHERE entryorguid = 19354 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 19413: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 19413 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 21338: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 21338 AND source_type = 0 AND id = 10 AND action_type = 11;

-- Entry 22006: Spell 15245
DELETE FROM smart_scripts WHERE entryorguid = 22006 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 24613: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 24613 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 24614: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 24614 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 25420: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 25420 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 25452: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 25452 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 27731: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 27731 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 28200: Spell 20812
DELETE FROM smart_scripts WHERE entryorguid = 28200 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 29129: Spell 37361
DELETE FROM smart_scripts WHERE entryorguid = 29129 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 2968400: Spell 54955
DELETE FROM smart_scripts WHERE entryorguid = 2968400 AND source_type = 9 AND id = 0 AND action_type = 11;

-- Entry 29885: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 29885 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 30180: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 30180 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 30409: Spell 14034
DELETE FROM smart_scripts WHERE entryorguid = 30409 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 30475: Spell 17145
DELETE FROM smart_scripts WHERE entryorguid = 30475 AND source_type = 0 AND id = 7 AND action_type = 11;

-- Entry 30665: Spell 13748
DELETE FROM smart_scripts WHERE entryorguid = 30665 AND source_type = 0 AND id = 6 AND action_type = 11;

-- Entry 30829: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 30829 AND source_type = 0 AND id = 4 AND action_type = 11;

-- Entry 31779: Spell 15242
DELETE FROM smart_scripts WHERE entryorguid = 31779 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 32263: Spell 20787
DELETE FROM smart_scripts WHERE entryorguid = 32263 AND source_type = 0 AND id = 1 AND action_type = 11;

-- Entry 32279: Spell 14032
DELETE FROM smart_scripts WHERE entryorguid = 32279 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 32300: Spell 34942
DELETE FROM smart_scripts WHERE entryorguid = 32300 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 35008: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 35008 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 35454: Spells 11990, 20812
DELETE FROM smart_scripts WHERE entryorguid = 35454 AND source_type = 0 AND id IN (0, 3) AND action_type = 11;

-- Entry 35602: Spell 14145
DELETE FROM smart_scripts WHERE entryorguid = 35602 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 36412: Spells 11990, 20812
DELETE FROM smart_scripts WHERE entryorguid = 36412 AND source_type = 0 AND id IN (0, 3) AND action_type = 11;

-- Entry 36441: Spells 11990, 20812
DELETE FROM smart_scripts WHERE entryorguid = 36441 AND source_type = 0 AND id IN (0, 3) AND action_type = 11;

-- Entry 36442: Spells 11990, 20812
DELETE FROM smart_scripts WHERE entryorguid = 36442 AND source_type = 0 AND id IN (0, 3) AND action_type = 11;

-- Entry 38926: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 38926 AND source_type = 0 AND id = 2 AND action_type = 11;

-- Entry 40882: Spell 11990
DELETE FROM smart_scripts WHERE entryorguid = 40882 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 44317: Spell 15550
DELETE FROM smart_scripts WHERE entryorguid = 44317 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 48312: Spell 15245
DELETE FROM smart_scripts WHERE entryorguid = 48312 AND source_type = 0 AND id = 3 AND action_type = 11;

-- Entry 49148: Spell 9081
DELETE FROM smart_scripts WHERE entryorguid = 49148 AND source_type = 0 AND id = 0 AND action_type = 11;

-- Entry 96545: Spell 22695
DELETE FROM smart_scripts WHERE entryorguid = 96545 AND source_type = 0 AND id = 0 AND action_type = 11;

-- ============================================================================
-- 2. Delete SMART_ACTION_CAST_AURA (22) with non-existent spells
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (12423, 12427, 12428, 12429, 12430) AND source_type = 0 AND action_type = 22;

-- ============================================================================
-- 3. Delete SMART_ACTION_CAST_GO (80) with non-existent spells
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (12423, 12427, 12428, 12429, 12430) AND source_type = 0 AND action_type = 80;

-- ============================================================================
-- 4. Delete SMART_ACTION_CAST_TRIGGERED (33) with non-existent spells
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid = 17551 AND source_type = 0 AND action_type = 33;

-- Delete also the GO cast for 17551
DELETE FROM smart_scripts WHERE entryorguid = 17551 AND source_type = 0 AND action_type = 80;

-- ============================================================================
-- 5. Delete SMART_ACTION_TALK (1) with non-existent Text IDs
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid = -304595 AND source_type = 0 AND id = 0 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 1521 AND source_type = 0 AND id = 1 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 17517 AND source_type = 0 AND id = 0 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 17835 AND source_type = 0 AND id = 9 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 17839 AND source_type = 0 AND id IN (3, 11, 12) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 17892 AND source_type = 0 AND id IN (10, 11) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 18994 AND source_type = 0 AND id = 10 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 18995 AND source_type = 0 AND id IN (10, 11) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21104 AND source_type = 0 AND id IN (3, 10, 11) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21136 AND source_type = 0 AND id IN (4, 10, 11) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21137 AND source_type = 0 AND id IN (4, 10) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21138 AND source_type = 0 AND id IN (4, 10) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21139 AND source_type = 0 AND id IN (4, 10, 11) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 21140 AND source_type = 0 AND id IN (0, 3, 9) AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 30453 AND source_type = 0 AND id = 6 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 30680 AND source_type = 0 AND id = 6 AND action_type = 1;
DELETE FROM smart_scripts WHERE entryorguid = 49480 AND source_type = 0 AND id = 10 AND action_type = 1;

-- ============================================================================
-- 6. Delete SMART_ACTION_GAMEOBJECT_TARGET (70) with invalid GO GUIDs
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid = 20801 AND source_type = 9 AND action_type = 70;

-- ============================================================================
-- 7. Delete UNUSED ACTION TYPES (15, 18)
-- These action types don't exist in current TC build
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid = 356801 AND source_type = 9 AND id = 3 AND action_type = 15;
DELETE FROM smart_scripts WHERE entryorguid = 358401 AND source_type = 9 AND id = 4 AND action_type = 15;
DELETE FROM smart_scripts WHERE entryorguid = 450807 AND source_type = 9 AND id = 3 AND action_type = 15;
DELETE FROM smart_scripts WHERE entryorguid = 626601 AND source_type = 9 AND id = 2 AND action_type = 15;
DELETE FROM smart_scripts WHERE entryorguid = 2878703 AND source_type = 9 AND id = 2 AND action_type = 15;
DELETE FROM smart_scripts WHERE entryorguid = 12492200 AND source_type = 9 AND id = 2 AND action_type = 18;

-- ============================================================================
-- 8. Delete SMART_ACTION_SET_INGAME_PHASE_ID (59) with invalid phaseid
-- ============================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (3774500, 3774501) AND action_type = 59;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Total deleted rows: ~220 SmartAI actions
--   - ~175 with non-existent Vanilla/TBC spell IDs
--   - ~31 with non-existent Text IDs
--   - 3 with invalid GO GUIDs
--   - 6 with unused action types
--   - 2 with invalid phase IDs
-- All were skipped by the server anyway - deleting removes the warnings
-- ============================================================================