INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId, SortOrder)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'Frequency'),
'Stat', 'Stat',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp), 1);

INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId, SortOrder)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'Frequency'),
'Once-off', 'Once-off',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp), 2);