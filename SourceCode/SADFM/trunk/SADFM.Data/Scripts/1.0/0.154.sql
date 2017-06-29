
DELETE FROM [ListItem] WHERE ParentId IN (SELECT l3.ListItemId FROM [ListItem] AS l1
JOIN [ListItem] AS l2
ON l1.ListItemId = l2.ParentId
AND l1.Name = 'Country'
AND l2.Name = 'Namibia'
JOIN [ListItem] AS l3
ON l2.ListItemId = l3.ParentId);

DELETE FROM [ListItem] WHERE ParentId IN (SELECT l2.ListItemId FROM [ListItem] AS l1
JOIN [ListItem] AS l2
ON l1.ListItemId = l2.ParentId
AND l1.Name = 'Country'
AND l2.Name = 'Namibia');

