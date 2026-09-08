-- Aureon Core 0.2.3: normal Pandaren warlock starts must not use NPE ship-local coordinates.
-- Match each faction's existing warrior start; retain all NPE transport and scene data.
UPDATE playercreateinfo AS target
INNER JOIN playercreateinfo AS reference ON reference.race = target.race AND reference.class = 1
SET target.map = reference.map,
    target.position_x = reference.position_x,
    target.position_y = reference.position_y,
    target.position_z = reference.position_z,
    target.orientation = reference.orientation
WHERE target.race IN (25, 26) AND target.class = 9 AND target.map = 2175
  AND reference.map IN (0, 1)
  AND target.position_x = target.npe_position_x
  AND target.position_y = target.npe_position_y
  AND target.position_z = target.npe_position_z;
