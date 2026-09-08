# Offline map and DB2 diagnostics

Enable with `-DBUILD_MAPDATA_AUDIT=ON` on a build with the game server and tools enabled, then build the `mapdata_audit` target. No database connection is made and no extracted data is written. The DB2 table list is generated from the server's storage declarations.

Examples (PowerShell):

```powershell
& ./build/bin/Release/mapdata_audit.exe 'C:/Program Files (x86)/World of Warcraft' --db2 deDE
& ./build/bin/Release/mapdata_audit.exe 'C:/Program Files (x86)/World of Warcraft' --points build/map-audit-points.txt
& ./build/bin/Release/mapdata_audit.exe 'C:/Program Files (x86)/World of Warcraft' --spell-effects 383056
& ./build/bin/Release/mapdata_audit.exe 'C:/Program Files (x86)/World of Warcraft' --records SummonProperties.db2 4926
```

Point files contain whitespace-separated `label mapId x y z` rows. Comments start with `#`. The tool loads the point's terrain and VMAP tile through the core readers, with parent maps taken from Map.db2. `map_status=0` and `vmap_status=0` mean successful loading. Model heights of -200000 mean no static model surface below the query; they do not mean a corrupt file. The model query starts two units above the supplied Z and searches down 100 units. Terrain holes, flying units, dynamic objects and multiple floors require interpretation; never overwrite spawn heights just from a difference in this report.

`--db2` performs full binary loading with the core's current layout metadata. It does not validate database hotfixes or all gameplay relationships. `--records` dumps numeric fields for requested row IDs; strings are omitted. `--spell-effects` selects by SpellID and also prints a small default set of quest spells.

Point-mode exit status reports malformed rows/files; a missing optional tile is shown in the status columns. No pathfinding or client playthrough is performed.
