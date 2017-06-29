UPDATE	lisi
SET		lisi.Code = CASE lisi.Name WHEN 'Adjustment to Limitations' THEN 'AdjustmentToLimits' WHEN 'Speech Intelligibility' THEN 'Speech' ELSE REPLACE(lisi.Name, ' ', '') END
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name='Scale' AND lis.ParentId = lip.ListItemId AND lis.Name='FAM')
		INNER JOIN ListItem lisi ON (lisi.ParentId = lis.ListItemId);