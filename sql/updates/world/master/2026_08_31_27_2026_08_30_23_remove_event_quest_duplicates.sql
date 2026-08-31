-- Remove permanent starter rows that also exist on game_event_* (holiday quests).
-- Keeps the event assignment so quests only appear during the event (no double offer).
-- Backup: sql/backups/2026_08_30_quest_npc_assignments.sql

DELETE s FROM `creature_queststarter` s
INNER JOIN `game_event_creature_quest` e ON e.`id`=s.`id` AND e.`quest`=s.`quest`;

DELETE s FROM `gameobject_queststarter` s
INNER JOIN `game_event_gameobject_quest` e ON e.`id`=s.`id` AND e.`quest`=s.`quest`;
