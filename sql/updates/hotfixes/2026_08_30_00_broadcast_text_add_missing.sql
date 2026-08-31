-- Add missing broadcast_text parent rows referenced by broadcast_text_locale (all locales).
-- Does not delete any locale data.

INSERT INTO `broadcast_text` (
  `Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`,
  `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`,
  `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`
)
SELECT
  COALESCE(
    MAX(CASE WHEN CAST(l.`locale` AS CHAR CHARACTER SET utf8mb4)='deDE' THEN l.`Text_lang` END),
    MAX(CASE WHEN CAST(l.`locale` AS CHAR CHARACTER SET utf8mb4)='frFR' THEN l.`Text_lang` END),
    MAX(l.`Text_lang`)
  ),
  COALESCE(
    MAX(CASE WHEN CAST(l.`locale` AS CHAR CHARACTER SET utf8mb4)='deDE' THEN l.`Text1_lang` END),
    MAX(CASE WHEN CAST(l.`locale` AS CHAR CHARACTER SET utf8mb4)='frFR' THEN l.`Text1_lang` END),
    MAX(l.`Text1_lang`)
  ),
  l.`ID`, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68974
FROM `broadcast_text_locale` l
LEFT JOIN `broadcast_text` b ON b.`ID` = l.`ID`
WHERE b.`ID` IS NULL
GROUP BY l.`ID`;
