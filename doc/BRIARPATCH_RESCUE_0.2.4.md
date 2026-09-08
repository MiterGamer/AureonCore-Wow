# Briarpatch prisoner rescue — 0.2.4

The user reports that Lindie disappears after killing Geolord Grek'og in Down with the Quilboar (Alliance 55186 / Horde 59938).

## Evidence

Geolord's script summons Lindie/Cork through ritual helper 155371. The inspected helper spawns use phase 15276. The player condition for that phase permits an untaken or in-progress Alliance quest; completion removes it. The prisoner inherits the summoner's phase. Completion phases 13776 (Alliance) and 15315 (Horde) are present in the world conditions. This is a concrete visibility mismatch to address, but the exact reported client disappearance has not been reproduced here.

The prisoner script already contains a release jump, rescue Talk(0), and run to the plains. Both prisoner script bindings and rescue text/audio records exist. Previously the actor was unconditionally removed five seconds after starting its run.

## Code change

On first release, add the relevant completion phase to the actor, preserving its original phase. Release can only start once. Retain the existing jump, rescue line and four-second pause. Despawn one second after arrival at the run destination, with a thirty-second navigation cleanup timeout. Do not alter quest credits, spawns or global phases.

## Separate remaining story issue

Conversations 12076 / 14514 are rejected by the supplied startup log because first lines 29386 / 36347 are unavailable. They are also absent from the inspected local ConversationLine.db2 catalog and copy table. The post-briarpatch conversation trigger has no matching create-properties ScriptName binding in the queried database. No replacement conversation data, invented dialogue or timing has been inserted. This patch targets the prisoner rescue animation and rescue line, not full reconstruction of that later conversation.

## Validation

Release worldserver build completed successfully on 8 September 2026 at 19:48 CEST. The packaged and locally installed executable both passed `--version`; all six installed binary/runtime files match their staged SHA-256 hashes. The previous local files are retained in `C:/Users/drago/Downloads/aureon-build/briarpatch-024/backup-before-rescue`. No worldserver process was running during replacement. No database changes were made for this patch.

Installed to `C:/Users/drago/Downloads/aureon-core`. A separate remote host must receive the packaged files while its worldserver is stopped. No remote executable deployment or server startup was performed.

In-game verification is still required: kill Grek'og with the quest active, observe the jump and rescue line, follow the prisoner to the exit, verify despawn on arrival, and repeat for Horde. Also check normal quest credit. Compilation and the executable version check do not establish that the reported client issue is fully resolved.
