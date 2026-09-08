# Changelog - 2026-09-06

## Version 0.2.4 — 8 September 2026 at 19:05 CEST

- Added four missing named equipment drops for Great Father Arctikus, Frostmane Novice and the current Frostmane Seer.
- Used documented public retail sample rates as estimates; preserved all existing loot and difficulty mappings. No obsolete quest loot or Classic drop-rate tables imported.
- Migration 21 applied remotely; transaction rollback and repeat-import checks passed. Complete loot pools and in-game generation remain unverified.

Details: [Loot restoration](doc/LOOT_REPAIR_0.2.4.md).


## Version 0.2.4 — 8 September 2026 at 18:54 CEST

- Restored missing stationary quest-giver spawns for Magistrix Erona, Lanthan Perilon and Proenitus.
- Preserved their existing templates, scripts, ten quest-start links and eight quest-end links.
- Used legacy position references corroborated by public locations and local build-69497 terrain; exact retail phasing and gameplay remain unverified. Deferred Megelon pending model-collision height validation.
- Applied migration 20 remotely after transaction rollback, duplicate-prevention and exact template/relation checks. Restart worldserver; no new executable required.

Details: [Starting-area NPC restoration](doc/STARTING_NPCS_0.2.4.md).


## Version 0.2.3 — 8 September 2026 at 18:22 CEST

- Corrected four all-zero object rotations using the existing loader orientation fallback (migration 19, applied remotely).
- Exact transaction rollback, normalized rotation checks and repeat import passed. No gameplay content or NPC text was invented; large missing-content groups remain unresolved.


## Version 0.2.3 — 8 September 2026 at 18:12 CEST

- Restored four missing initiating area-trigger actions for quest 10085 from the original TrinityCore script. Existing linked credits could not trigger without them.
- Preserved quest conditions and credit rows; verified dependencies, exact transaction rollback and repeat import. Applied migration 18 remotely.
- Restart worldserver and test the four quest locations. No new executable required; live gameplay validation remains pending.


## Version 0.2.3 — September 8, 2026 at 17:59 CEST

- Reviewed the new startup logs: 20,590 DB messages; the seven targeted Mist/Protector of the Frail messages are absent. Successful login is not recorded in these logs.
- Corrected six dangling terminal area-trigger SmartAI links in migration 17, preserving direct actions and conditions. Applied remotely with backup, exact transaction rollback and repeat-import checks.
- No binary change; restart worldserver for verification. Remaining missing content and spell rules are unresolved.


## Exile's Reach Quest and NPC Fixes

### Fixed

- Fixed the Horde ship NPC `166573` (Warlord Grimaxe) using an empty script name. It now uses `npc_warlord_grimaxe_lower_ship`.
- Restored missing `StringId` values for the Exile's Reach beach survivors. This fixes quest scripts that could not find the NPCs and therefore failed to create personal quest clones:
  - `156609` - Bjorn Stouthands
  - `156610` - Austin Huxworth
  - `156612` - Kee-La
  - `166786` - Bo
  - `166791` - Mithran Dawntracker
  - `166796` - Lana Jordan
- Made the survivor repair migration independent of imported spawn GUIDs by matching stable map, zone, area, and creature entry values.

### Verified

- Verified the Exile's Reach quest scripts for the Alliance and Horde versions of Finding the Lost Expedition.
- Verified the quest objectives, phase entries, quest starters, and quest enders for Who Lurks in the Pit (`55639` / `59949`).
- Verified that the five Thick Cocoon objects (`339568`) are present and usable.
- Verified Hrun (`156900`) and Ralia Dreamchaser (`156929`) quest logic, including the Ralia spell click and escape scene.
- Verified the follow-up repair quests (`85678` / `85679`) and their Quartermaster quest credit.
- Fixed the five Thick Cocoon spawns (`339568`) being imported with a completed animation state (`animprogress = 255`). They now load as closed, usable cocoons (`animprogress = 0`, `state = 1`) with the existing 120-second respawn time, allowing later players to use them.
- Fixed Hrun (`156900`) not returning after death because the previous migration targeted obsolete spawn GUID `64049`. The live spawn is now matched by map and entry, uses a 120-second respawn, has its stale two-hour character-database respawn entry removed, and is linked to spawn tracking `1825492` for both Alliance and Horde objectives.
- Fixed the Alliance and Horde Harpy Totem phases (`15356` / `15355`) using invalid condition targets. The phases now correctly apply to area `10424`, making Totems targetable for `Purge the Totems` (`55881` / `59946`).
- Reset all Harpy Totem spawns (`327146` / `350803`) to a closed animation state with a 120-second respawn.
- Added explicit Bloodbeak quest credit when Bloodbeak dies, making `The Rescue of Meredy Huntswell` (`55763`) complete reliably.
- Restored the missing Priest class follow-up quests `58953` / `59961` (`A Priest's End`) after `Who Lurks in the Pit` (`55639` / `59949`). Added the Priest class restriction, previous quest links, official starters (`156801` / `167216`), enders (`163108` / `167188`), and missing Branven/Sha'zul spawns.

## Darkmaul Citadel Fixes

### Fixed

- Restored the Gor'groth boss script for creature entry `156814`.
- Removed any per-spawn script override on the Map `2236` Gor'groth spawn so the correct template script is used.
- Verified the Darkmaul Citadel boss spawns for Tunk, Gor'groth, and Ravnyr.
- Verified the Darkmaul Citadel instance script, boss scripts, ritual sequence, Ravnyr defeat handling, and Kalecgos exit interaction.
- Verified the Alliance and Horde dungeon quest objectives and questgiver assignments for `55992` and `59984`.

## Known Remaining Issue

- The `tc_hotfixes` database currently has no `lfg_dungeons` entry for Map `2236` (Darkmaul Citadel). The matching Dungeon Finder hotfix entry and related encounter records still need to be added before the Dungeon Finder can reliably list and enter the dungeon.

## Database Migrations

- `sql/updates/world/master/2026_09_06_11_world.sql`
- `sql/updates/world/master/2026_09_06_12_world.sql`
- `sql/updates/world/master/2026_09_06_13_world.sql`
- `sql/updates/world/master/2026_09_06_14_world.sql`
- `sql/updates/world/master/2026_09_06_15_world.sql`
- `sql/updates/world/master/2026_09_06_16_world.sql`
