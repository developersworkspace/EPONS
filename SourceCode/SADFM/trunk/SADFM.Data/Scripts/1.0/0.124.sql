UPDATE a
SET a.Value ='Simple'
FROM ListItem AS a JOIN [ListItem] AS b ON a.ParentId = b.ListItemId AND b.Name = 'Scale';

UPDATE a
SET a.Value ='Delta'
FROM ListItem AS a JOIN [ListItem] AS b ON a.ParentId = b.ListItemId AND b.Name = 'Scale' AND a.Name = 'Delta';

