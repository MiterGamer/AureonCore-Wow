-- Fix creature_template errors from Donor Repack
-- These are the same fixes the server does at runtime, but permanent in DB

-- ============================================================================
-- 1. Fix faction = 0 -> set to 35 (neutral friendly)
-- ============================================================================
UPDATE creature_template SET faction = 35 WHERE faction = 0 AND entry NOT IN (0);
SELECT ROW_COUNT() AS 'Faction 0 -> 35 fixed';

-- ============================================================================
-- 2. Fix disallowed unit_flags
-- The server removes these flags at runtime. We do it permanently.
-- ============================================================================

-- Remove flag 2048 (UNIT_FLAG_DISABLE_MOVE)
UPDATE creature_template SET unit_flags = unit_flags & ~2048 WHERE unit_flags & 2048;
SELECT ROW_COUNT() AS 'unit_flags 2048 removed';

-- Remove flag 262144 (UNIT_FLAG_PET_IN_COMBAT)
UPDATE creature_template SET unit_flags = unit_flags & ~262144 WHERE unit_flags & 262144;
SELECT ROW_COUNT() AS 'unit_flags 262144 removed';

-- Remove flag 262160 (PET_IN_COMBAT | other)
UPDATE creature_template SET unit_flags = unit_flags & ~262160 WHERE unit_flags & 262160;
SELECT ROW_COUNT() AS 'unit_flags 262160 removed';

-- Remove flag 536870912
UPDATE creature_template SET unit_flags = unit_flags & ~536870912 WHERE unit_flags & 536870912;
SELECT ROW_COUNT() AS 'unit_flags 536870912 removed';

-- Remove flag 537133056
UPDATE creature_template SET unit_flags = unit_flags & ~537133056 WHERE unit_flags & 537133056;
SELECT ROW_COUNT() AS 'unit_flags 537133056 removed';

-- Remove flag 2147483648
UPDATE creature_template SET unit_flags = unit_flags & ~2147483648 WHERE unit_flags & 2147483648;
SELECT ROW_COUNT() AS 'unit_flags 2147483648 removed';

-- Remove flag 2147745792
UPDATE creature_template SET unit_flags = unit_flags & ~2147745792 WHERE unit_flags & 2147745792;
SELECT ROW_COUNT() AS 'unit_flags 2147745792 removed';

-- Remove flag 67108864
UPDATE creature_template SET unit_flags = unit_flags & ~67108864 WHERE unit_flags & 67108864;
SELECT ROW_COUNT() AS 'unit_flags 67108864 removed';

-- Remove flag 16
UPDATE creature_template SET unit_flags = unit_flags & ~16 WHERE unit_flags & 16;
SELECT ROW_COUNT() AS 'unit_flags 16 removed';

-- Remove flag 187750 - entry-specific
UPDATE creature_template SET unit_flags = unit_flags & ~16 WHERE entry = 187750 AND unit_flags & 16;
SELECT ROW_COUNT() AS 'unit_flags 16 removed for 187750';

-- ============================================================================
-- 3. Fix disallowed unit_flags2
-- ============================================================================

-- Remove flag 2097152
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~2097152 WHERE unit_flags2 & 2097152;
SELECT ROW_COUNT() AS 'unit_flags2 2097152 removed';

-- Remove flag 33554432
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~33554432 WHERE unit_flags2 & 33554432;
SELECT ROW_COUNT() AS 'unit_flags2 33554432 removed';

-- Remove flag 4194304
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~4194304 WHERE unit_flags2 & 4194304;
SELECT ROW_COUNT() AS 'unit_flags2 4194304 removed';

-- Remove flag 134217728
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~134217728 WHERE unit_flags2 & 134217728;
SELECT ROW_COUNT() AS 'unit_flags2 134217728 removed';

-- Remove flag 1075838976
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1075838976 WHERE unit_flags2 & 1075838976;
SELECT ROW_COUNT() AS 'unit_flags2 1075838976 removed';

-- Remove flag 1073741824
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1073741824 WHERE unit_flags2 & 1073741824;
SELECT ROW_COUNT() AS 'unit_flags2 1073741824 removed';

-- Remove flag 1207959552
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1207959552 WHERE unit_flags2 & 1207959552;
SELECT ROW_COUNT() AS 'unit_flags2 1207959552 removed';

-- Remove flag 138412032
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~138412032 WHERE unit_flags2 & 138412032;
SELECT ROW_COUNT() AS 'unit_flags2 138412032 removed';

-- Remove flag 1107296256
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1107296256 WHERE unit_flags2 & 1107296256;
SELECT ROW_COUNT() AS 'unit_flags2 1107296256 removed';

-- Remove flag 35651584
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~35651584 WHERE unit_flags2 & 35651584;
SELECT ROW_COUNT() AS 'unit_flags2 35651584 removed';

-- Remove flag 1075838976
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1075838976 WHERE unit_flags2 & 1075838976;
SELECT ROW_COUNT() AS 'unit_flags2 1075838976 removed (2)';

-- Remove entry-specific flags
UPDATE creature_template SET unit_flags2 = unit_flags2 & ~1073741824 WHERE entry = 190485 AND unit_flags2 & 1073741824;
SELECT ROW_COUNT() AS 'unit_flags2 1073741824 for 190485';

-- ============================================================================
-- 4. Fix disallowed unit_flags3
-- ============================================================================

-- Remove flag 1
UPDATE creature_template SET unit_flags3 = unit_flags3 & ~1 WHERE unit_flags3 & 1;
SELECT ROW_COUNT() AS 'unit_flags3 1 removed';

-- Remove flag 8388608
UPDATE creature_template SET unit_flags3 = unit_flags3 & ~8388608 WHERE unit_flags3 & 8388608;
SELECT ROW_COUNT() AS 'unit_flags3 8388608 removed';

-- Remove flag 67108864
UPDATE creature_template SET unit_flags3 = unit_flags3 & ~67108864 WHERE unit_flags3 & 67108864;
SELECT ROW_COUNT() AS 'unit_flags3 67108864 removed';

-- Remove flag 1073741824
UPDATE creature_template SET unit_flags3 = unit_flags3 & ~1073741824 WHERE unit_flags3 & 1073741824;
SELECT ROW_COUNT() AS 'unit_flags3 1073741824 removed';

-- Remove flag 226296 specific
UPDATE creature_template SET unit_flags3 = unit_flags3 & ~67108864 WHERE entry = 226296 AND unit_flags3 & 67108864;
SELECT ROW_COUNT() AS 'unit_flags3 for 226296';

-- ============================================================================
-- 5. Fix disallowed flags_extra
-- ============================================================================

-- Remove flag 268435456 (CREATURE_FLAG_EXTRA_DUNGEON_BOSS)
UPDATE creature_template SET flags_extra = flags_extra & ~268435456 WHERE flags_extra & 268435456;
SELECT ROW_COUNT() AS 'flags_extra 268435456 removed';

-- ============================================================================
-- SUMMARY
-- ============================================================================
SELECT 'Done - All creature_template errors fixed' AS Status;
