INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Funders', 'Funders', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');