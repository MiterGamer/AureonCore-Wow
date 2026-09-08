# Freeing the Light: invisible melee attackers

8 September 2026, 20:12 CEST — version 0.2.4.

The user's death recap identifies InvisBunny dealing repeated melee hits. Around Lightspawn 157114 (quest 54933) the remote world database contains four hostile, invisible helpers with no explicit AI or script:

| Entry | Spawn GUID | Map | Phase |
| --- | --- | --- | --- |
| 164026 | 1051408 | 2175 | 13878 |
| 155572 | 1051410 | 2175 | 13878 |
| 164022 | 1051411 | 2175 | 13878 |
| 164025 | 1051412 | 2175 | 13878 |

Each template has exactly one permanent spawn in the queried database. All four use faction 14 and have empty AIName/ScriptName, no template addon and no creature SmartAI rows. Their AI selection therefore falls back to the default factory rather than a non-combat helper AI. The recap does not distinguish which of these four entries delivered the hits.

Migration `2026_09_08_22_world.sql` assigns `NullCreatureAI` only where both bindings were empty. This registered AI sets passive reaction and disables melee, with empty attack/line-of-sight/update handlers. Faction, coordinates, phases, models, flags and quest data are preserved. No spawn is deleted.

Applied remotely to `tc_world`. Exact rollback check passed before application. Full template snapshots verify only AIName changed on the four records; repeat import left the result unchanged. Snapshots, verification output and targeted rollback SQL are under `C:/Users/drago/Downloads/aureon-build/invisbunny-024`.

Restart worldserver to recreate existing helpers with the new AI. No new executable is required for this database fix. Live client verification is pending: approach Lightspawn with quest 54933 active, check that invisible melee stops, and separately test quest progression. This patch does not claim to restore missing quest actions.
