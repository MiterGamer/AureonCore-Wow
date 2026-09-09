-- Aureon Core 0.2.3: six single-action area triggers have no linked event 1.
-- Preserve existing actions and conditions; clear only the dangling terminal link.
START TRANSACTION;
UPDATE smart_scripts SET link=0 WHERE source_type=12 AND entryorguid IN(183,186,187,188,189,190) AND id=0 AND link=1 AND event_type=46 AND ((entryorguid=183 AND action_type=33 AND action_param1=241677) OR (entryorguid=186 AND action_type=143 AND action_param1=30105) OR (entryorguid=187 AND action_type=143 AND action_param1=28825) OR (entryorguid=188 AND action_type=143 AND action_param1=10963) OR (entryorguid=189 AND action_type=143 AND action_param1=29580) OR (entryorguid=190 AND action_type=143 AND action_param1=29575));
COMMIT;
