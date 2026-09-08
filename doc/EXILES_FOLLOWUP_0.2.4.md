# Exile's Reach follow-up — 8 September 2026, 20:00 CEST

## Changes

- Scout-o-Matic 5000 and Horde Choppy Booster: on completion of the return path, retain retail despawn spell 305548, explicitly exit the vehicle if still aboard, remove the rope aura and despawn the vehicle after one second. A missing construction conversation no longer aborts the miniature helicopter's animation/cleanup event chain.
- Ralia Dreamchaser 156929: replace permanent floating/hovering with the observed brief suspension, gravity restoration, jump to the cave floor and movement to the waiting position. Preserve the existing click-to-scene interaction.
- Repair All: include damaged equipped/backpack/bag items even when the cost calculator returns zero. Previously these were silently excluded from both paid and free bulk repairs, although individual repair can repair them. Existing price calculation, personal affordability checks and guild budget behavior remain in place. Missing cost-table data can still produce zero prices; this change does not reconstruct those tables.

## Evidence

Local retail capture `dump_12.1.0.69587_2026-09-04_14-55-01_parsed.txt`:

- Packets 32304/32305: despawn spell 305548 after the scout flight at 15:07:57.888; the vehicle is subsequently destroyed in the capture.
- Packet 51454: Ralia's temporary suspended position (73.5503, -2129.3, -25.8277).
- Packets 51495–51497: enable gravity/unroot and jump at 15:16:59.684 to (73.7066, -2130.47, -30.0468), duration 548 ms, computed jump height 0.7241494.
- Packets 51525/51537: waiting destination (74.52984, -2134.3164, -30.010345), facing 5.272579. The intermediate walk is handled by navigation rather than reproducing every captured spline.

The public [quest description](https://www.wowhead.com/quest=56034/re-sizing-the-situation) confirms use of the Re-Sizer on three Wandering Boars. The [pit quest reference](https://warcraft.wiki.gg/wiki/Who_Lurks_in_the_Pit) confirms the escape ride; precise motion above comes from the local capture.

## Re-Sizer: unresolved mouse interaction

Alliance quest 56034 provides item 170557; spell 305716 has its registered spell/aura script. Horde quest 59941 provides 178051; wrapper 325346 and aura 325345 are bound. The local capture shows item-cast 305716 against an explicit Wandering Boar 156716. No evidence yet identifies why the user's left click fails. No input remapping, fabricated spell or target bypass was added. Confirm whether clicking the quest-item icon fails with a live Wandering Boar already selected, and whether using the item from the bag works.

## Validation and deployment

- Release worldserver compilation passed.
- An isolated C++ harness compiled the actual extracted `Player::DurabilityRepairAll` function against inventory/payment doubles: six assertions passed for zero-cost equipped/bag repairs, ordinary charges, healthy/bank exclusions, insufficient funds, free repairs and guild budgeting. The HEAD baseline failed the three assertions involving zero-cost items. This validates the selection/payment behavior, not a live player session or the cost-table contents.
- No database migration is needed. Package includes the earlier Briarpatch rescue code change.
- Local deployment: `C:/Users/drago/Downloads/aureon-core`. Previous binary/runtime files backed up under `C:/Users/drago/Downloads/aureon-build/exiles-followup-024/backup-before-update`; configurations/data remain in place. Remote deployment and in-game verification are still required.

Client checks: finish the scout round trip; confirm exit and no lingering owned drone; kill Hrun and watch Ralia land/walk before clicking her; damage equipment and test Repair All, including the resulting charge. These reported client issues have not been reproduced in a live client here.
