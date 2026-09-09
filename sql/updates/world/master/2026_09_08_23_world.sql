-- 0.2.4: restore the event-only Bloodbeak setup from 2026_09_04_10_world.sql.
-- Quest 55763 script summons its own boss after the waves (retail packet 31111).
-- Remove only the obsolete local fallback spawn, not other Bloodbeak spawns.
DELETE FROM `creature`
WHERE `guid` = 8000932 AND `id` = 153964 AND `map` = 2175
  AND `StringId` = 'q55763_bloodbeak';
