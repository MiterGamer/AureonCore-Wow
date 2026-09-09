# Starting-area quest givers — 0.2.4

8 September 2026 at 18:54 CEST. Migration 20 applied to remote tc_world.

Added one missing stationary spawn each for Magistrix Erona (15278), Lanthan Perilon (15281) and Proenitus (16477). Existing templates, models, flags, scripts, ten quest-start relations and eight quest-end relations are unchanged. This restores access to those NPCs, not proof of completion of every related quest.

Coordinate reference: [AzerothCore creature data](https://github.com/azerothcore/azerothcore-wotlk/blob/master/data/sql/base/db_world/creature.sql). These are legacy coordinates, not a new retail sniff. Current public location/quest descriptions corroborate the named locations: [Erona](https://warcraft.wiki.gg/wiki/Magistrix_Erona), [Lanthan](https://warcraft.wiki.gg/wiki/Lanthan_Perilon), [Proenitus](https://warcraft.wiki.gg/wiki/Proenitus). Public descriptions do not certify exact XYZ or phase settings.

The local extracted map files identify build 69497, not 69587. Terrain interpolation, using GridMap's triangular height calculation, puts each accepted point approximately 0.083–0.085 m above ground, with no terrain hole at the sampled cell. This is terrain validation, not model-collision or live visibility validation. Default phase 0, template inheritance and VerifiedBuild 0 are intentional baseline choices. Megelon (16475) is deferred: his reference height is 1.277 m above terrain and requires model-collision verification. No fake position was substituted.

All three NPC templates/models and expected quest links existed, but no creature spawns did. GUIDs 11903600–11903602 were unused. Test transaction rollback left no new spawns; deployment added exactly three; repeat import added none; exact template and quest-relation snapshots are unchanged. Audit, source excerpt, terrain results and rollback SQL are in C:/Users/drago/Downloads/aureon-build/update-024/. No pre-existing creature rows were changed.

Restart worldserver and test blood-elf racial introduction with Erona, handoff to Lanthan, and Proenitus at the draenei crash site. Megelon and other missing starter content remain open, so the draenei opening is not yet complete. No binary change or full gameplay certification.
