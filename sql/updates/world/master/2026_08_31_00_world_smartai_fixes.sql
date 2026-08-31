-- SmartAI Fixes - Nur korrigierbare Fehler (kein action_type=0)
-- Generiert aus saubem DBErrors.log nach World-DB Reset

-- ============================================================================
-- 1. MISSING REPEAT FLAGS (7)
-- event_flags muss SMART_EVENT_FLAG_NOT_REPEATABLE (0x001) setzen
-- ============================================================================

UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = 108767 AND source_type = 0 AND event_type = 0;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = 215480 AND source_type = 0 AND event_type = 0;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = 216432 AND source_type = 0 AND event_type = 2;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = 249198 AND source_type = 0 AND event_type = 1;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = 249200 AND source_type = 0 AND event_type = 1;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = -450358 AND source_type = 0 AND event_type = 0;
UPDATE smart_scripts SET event_flags = event_flags | 0x001 WHERE entryorguid = -450361 AND source_type = 0 AND event_type = 0;

-- ============================================================================
-- 2. DEPRECATED EVENT FLAGS (1)
-- Entry 31260: event_flags = 7 (0x007) enthaelt deprecated difficulty bits
-- Clear: 0x007 & ~0x006 = 0x001
-- ============================================================================

UPDATE smart_scripts SET event_flags = event_flags & ~0x006 WHERE entryorguid = 31260 AND source_type = 0 AND event_type = 2;

-- ============================================================================
-- 3. BROKEN FORWARD LINKS (12)
-- link zeigt auf nicht-existente event_id. link = 0 setzen.
-- ============================================================================

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 45514 AND source_type = 0 AND id = 0 AND link = 1;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 9396700 AND source_type = 9 AND id = 0 AND link = 1;
UPDATE smart_scripts SET link = 0 WHERE entryorguid = 9396700 AND source_type = 9 AND id = 1 AND link = 2;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 9396701 AND source_type = 9 AND id = 0 AND link = 1;
UPDATE smart_scripts SET link = 0 WHERE entryorguid = 9396701 AND source_type = 9 AND id = 1 AND link = 2;

UPDATE smart_scripts SET link = 0 WHERE entryorguid IN (160, 183, 186, 187, 188, 189, 190) AND source_type = 12 AND id = 0 AND link = 1;

-- ============================================================================
-- 4. BROKEN LINK SOURCE EVENTS (6)
-- event_type = SMART_EVENT_LINK (61) aber kein Source-Event verweist darauf
-- event_type auf 0 setzen (SMART_EVENT_TIMER), event_flags NOT_REPEATABLE setzen
-- ============================================================================

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 12423 AND source_type = 0 AND link = 5;
UPDATE smart_scripts SET event_type = 0, event_flags = event_flags | 0x001 WHERE entryorguid = 12423 AND source_type = 0 AND event_type = 61 AND id = 5;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 12427 AND source_type = 0 AND link = 5;
UPDATE smart_scripts SET event_type = 0, event_flags = event_flags | 0x001 WHERE entryorguid = 12427 AND source_type = 0 AND event_type = 61 AND id = 5;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 12428 AND source_type = 0 AND link = 5;
UPDATE smart_scripts SET event_type = 0, event_flags = event_flags | 0x001 WHERE entryorguid = 12428 AND source_type = 0 AND event_type = 61 AND id = 5;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 12429 AND source_type = 0 AND link = 5;
UPDATE smart_scripts SET event_type = 0, event_flags = event_flags | 0x001 WHERE entryorguid = 12429 AND source_type = 0 AND event_type = 61 AND id = 5;

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 12430 AND source_type = 0 AND link = 5;
UPDATE smart_scripts SET event_type = 0, event_flags = event_flags | 0x001 WHERE entryorguid = 12430 AND source_type = 0 AND event_type = 61 AND id = 5;

-- ============================================================================
-- 5. EVENT TYPE 47 INVALID FOR SCRIPT TYPE 0
-- Entry 156807: event_type 47 kann nicht fuer Script type 0 verwendet werden
-- Event deaktivieren durch link = 0 ( falls es ein LINK event ist )
-- ============================================================================

UPDATE smart_scripts SET link = 0 WHERE entryorguid = 156807 AND source_type = 0 AND link != 0;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Fix Type                          | Count | Risk
-- ----------------------------------|-------|------
-- Missing Repeat Flag (UPDATE)      |     7 | Low
-- Deprecated Event Flags (UPDATE)   |     1 | Low
-- Broken Forward Links (UPDATE)     |    12 | Low
-- Broken Source Links (UPDATE)      |    11 | Low
-- Event Type Fix (UPDATE)           |     1 | Low
-- ----------------------------------|-------|------
-- Total                             |    32 |
--
-- NICHT FIXBAR (harmlose Warnungen):
-- non-existent Spells:     175 (DBC-Daten, Server ueberspringt sicher)
-- non-existent Texts:       31 (Server ueberspringt sicher)
-- invalid GO GUIDs:          3 (Server ueberspringt sicher)
-- WaypointPath:              1 (Server ueberspringt sicher)
-- Unused action_type:        6 (Server ueberspringt sicher)
-- invalid phaseid:           2 (Server ueberspringt sicher)
-- C++ Spell Scripts:       112 (DBC-Daten, nicht per SQL fixbar)
-- Missing C++ Scripts:       3 (nicht per SQL fixbar)
-- BG Map 618:                1 (bereits im C++ gefixt)
-- ============================================================================