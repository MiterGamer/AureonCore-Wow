# Meredy personal rescue exit — 8 September 2026, 21:08 CEST

The completed quest previously triggered the ritual AI's failure cleanup: personal Meredy and her helpers were removed immediately. The public captive then became visible again.

The personal run now enters a completion state instead. It removes ritual auras (template aura 305513), animation kit, root and hover/gravity restrictions, then leaves after seven seconds. The first point is the captured departure position (494.91058, -2361.1357, 159.7431), followed by navigation to the existing roost entrance destination. Arrival cleans up the run; a 90-second timeout handles failed navigation. Quest abandonment, death or leaving the area still cleans up the run. The existing personal clone ownership is retained; no public actor is moved or stripped of auras.

Retail capture `dump_12.1.0.69587_2026-09-04_17-00-16_parsed.txt` shows boss credit at 17:11:07.285, animation kit reset at 17:11:07.430 and Meredy's departure movement by 17:11:14.758. This is a functional navigation implementation; it does not recreate every captured spline or spell 313541.

Migration 24 adds a visibility condition on public creature entry 153211: quest 55763 must NOT be complete/rewarded (state mask 66). `WorldObject::CanSeeOrDetect` exempts private objects from these source-32 conditions, keeping the rescued personal clone visible to its owner. Other players' quest state is evaluated independently. Private ownership visibility continues to restrict clones to their own player.

Validation: Release build succeeded. SQL rollback restored the empty prestate; first application inserted one condition and repeat application inserted zero. The resulting condition fields were verified remotely. Static lifecycle review covers incomplete, complete, rewarded and abandoned quest states; no two-client gameplay test has been performed.

Install the new worldserver and restart. The condition is already applied to remote tc_world. The local server binary/runtime backup is under `C:/Users/drago/Downloads/aureon-build/meredy-exit-024/backup-before-update`. Test with two players: only the completing player sees their Meredy freed and leaving; the unfinished player retains their captive and can start their own rescue. After personal cleanup/relogin the completing player should not see the public captive. Meredy 156882 remains the quest turn-in at the entrance.
