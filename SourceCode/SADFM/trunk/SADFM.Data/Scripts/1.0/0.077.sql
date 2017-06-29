UPDATE	lif
SET		Value =
		CASE lif.Name
			WHEN 'Stat' THEN 0
			WHEN 'Once-Off' THEN 0
			WHEN 'Daily' THEN 1
			WHEN 'SecondDay' THEN 2
			WHEN 'Weekly' THEN 7
			WHEN 'SecondWeek' THEN 14
			WHEN 'Monthly' THEN 30
		END
FROM	ListItem lif
		INNER JOIN ListItem lifp ON (lifp.Name = 'Frequency' AND lifp.ParentId IS NULL AND lif.ParentId = lifp.ListItemId);