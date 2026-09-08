-- Aureon Core 0.2.3: restore independently evidenced quest-start relations.
-- Sources: current Wowhead NPC start lists for 17071, 16535, 107574 and 86832.
-- Lightspawn: retail build 69587 sniff, 2026-09-04 17:00:16, packet 34256.
-- Existing quest prerequisites, class/race filters, NPC spawns and phases are retained.
INSERT INTO creature_queststarter (id, quest)
SELECT fix.id, fix.quest
FROM (
    SELECT 17071 AS id, 37445 AS quest -- Technician Zhanaa: Spare Parts
    UNION ALL SELECT 16535, 37444     -- Vindicator Aldar: Inoculation
    UNION ALL SELECT 107574, 7782     -- Anduin Wrynn: The Lord of Blackrock
    UNION ALL SELECT 107574, 28238    -- Anduin Wrynn: Twilight Shores
    UNION ALL SELECT 86832, 13842     -- Vol'jin: Dread Head Redemption
    UNION ALL SELECT 157114, 54933    -- Lightspawn: Freeing the Light
) AS fix
INNER JOIN quest_template q ON q.ID = fix.quest
INNER JOIN creature_template c ON c.entry = fix.id
WHERE NOT EXISTS (SELECT 1 FROM creature_queststarter existing WHERE existing.id = fix.id AND existing.quest = fix.quest);
