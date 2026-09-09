# Rescue of Meredy Huntswell — 0.2.4

Reviewed 8 September 2026, 20:30 CEST against local retail capture `dump_12.1.0.69587_2026-09-04_17-00-16_parsed.txt`, current source and remote tc_world.

## Captured sequence

- Packet 25047, 17:05:20.608: accept quest 55763 from Henry 156859.
- Packet 29181, 17:08:54.108: select Meredy 153211's gossip menu 24887, option 49526 (database OptionID 0).
- Existing event script implements timed ambusher/worg waves and Kee-La/Henry support with conversations 11738/11739.
- Packet 31111, 17:10:31.720: the run's Bloodbeak 153964 appears at (490.96936, -2423.2778, 174.1366), 97.612 seconds after the client gossip request. The script's 97.457-second timer is consistent with this interval including network timing.
- Packets 31754/31755, 17:11:07.285: Bloodbeak with that same GUID grants objective 153964 and completes quest 55763. The earlier Bloodbeak visible at 17:05:37 has a different GUID; that sighting alone is not evidence for a permanent world spawn.

## Database checks and repair

Meredy and Bloodbeak have their correct C++ script bindings. Gossip option and incomplete-quest condition are present. Objective 389775 requires one kill credit for 153964; quest turn-in remains on Meredy 156882. Bloodbeak spell 317561 and conversation templates 11738/11739 are present. Presence of templates is not proof that every conversation plays successfully in the client.

Obsolete fallback spawn GUID 8000932 (StringId q55763_bloodbeak) had reappeared despite the explicit removal in migration 2026_09_04_10_world.sql. It duplicates the boss created by the current personal event script. Migration 2026_09_08_23_world.sql removes only that identified fallback record. No related addon, spawn-group or linked-respawn records were found for this GUID.

The original row was dumped to `C:/Users/drago/Downloads/aureon-build/meredy-024/rollback-spawn.sql`. Transaction test deleted one row and rollback restored it. Remote application removed one row; repeat import removed zero. There are now zero permanent Bloodbeak spawns on map 2175. The existing quest-end relation was verified afterward.

Restart worldserver to remove the already loaded fallback spawn. No new executable is required for this repair. In-game verification remains pending: accept quest, speak to ritual Meredy, finish waves, kill the event boss and confirm 1/1 plus turn-in at Meredy near the roost entrance. This review does not certify the full animation/dialogue sequence; the current script also cleans up personal summons on quest completion, which merits a separate client check of the exit sequence.
