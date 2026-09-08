# Quest 10085 trigger repair — 0.2.3

8 September 2026 at 18:12 CEST. Migration 18 applied to remote tc_world.

Four legacy area triggers (4368, 4369, 4371, 4372) had only linked event 1 and no initiating event 0. The orphaned credit events therefore never triggered. Restored the missing area-trigger event, invoker self-cast of server spell 33122 and link to the existing credit action from sql/old/9.x/world/21111_2022_01_02/2021_12_11_29_world_2019_06_20_01_world.sql.

Checked SmartTrigger bindings, server spell and effects, all four credit templates, and quest 10085 objective IDs 262445–262448. Existing objective-incomplete conditions, quest credits, targets and other scripts remain unchanged. No creatures or loot were added.

Exact transaction rollback, repeat import, preservation of original credit rows and conditions passed. Four rows added. Backup and verification: C:/Users/drago/Downloads/aureon-build/quest-10085-repair/. Backup contains original rows, not a standalone rollback migration.

No binary change. Restart worldserver, then test each location with quest 10085 active and its objective incomplete. Verify the vision and one corresponding objective credit. No live gameplay test or post-change startup log was available; complete quest-chain availability is not certified.
