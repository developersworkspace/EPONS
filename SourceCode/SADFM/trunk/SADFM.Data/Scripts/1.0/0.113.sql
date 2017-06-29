INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Name='ICD10' AND ParentId IS NULL), 'Unknown', 'Unknown',
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
