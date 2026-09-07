-- Who Lurks in the Pit: Thick Cocoons were imported with a completed
-- animation state, so they could disappear after interaction and fail to
-- present as fresh usable cocoons for later players.
SET NAMES utf8mb4;

UPDATE `gameobject`
SET `animprogress` = 0,
    `state` = 1
WHERE `id` = 339568
  AND `map` = 2175;