INSERT INTO ListItem (ParentId, Name, [Description], SortOrder,Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'VitalSigns', 'Vital Signs', 0,'IgnoredScale', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');