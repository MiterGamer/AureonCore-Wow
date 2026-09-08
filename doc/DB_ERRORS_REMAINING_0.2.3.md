# Database error review — 8 September 2026 at 18:22 CEST

Current supplied log: 20580 non-empty messages. Remaining large groups include 5,808 missing gameobject-loot entries, 2,265 spell-loot entries, 2,043 item-loot entries, 1,130 missing spawn-group members and 677 missing proc phases. Counts are messages, not unique records. These require content evidence; empty loot or blanket proc phases would not restore intended gameplay.

Migration 19 corrects four all-zero gameobject rotation quaternions (GUIDs 166358–166361, entries 184080–184083). Uses sin(orientation/2) and cos(orientation/2) for Z/W, matching ObjectMgr::LoadGameObjects orientation-only runtime fallback. Original orientation and all other fields remain unchanged. Applied remotely; backup, exact transaction rollback, unit quaternion/angle checks and repeat import passed. Evidence and backup are in C:/Users/drago/Downloads/aureon-build/rotation-repair/. No post-change startup log or gameplay test is claimed.

NPC text candidates were also inspected: some contain no text references and others have several references with unknown intended weights. No probabilities or replacement text were invented. Full repair of all remaining messages is not complete.
