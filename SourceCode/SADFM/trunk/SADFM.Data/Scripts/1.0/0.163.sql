DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ListItemId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'APOM' AND lis.ParentId = lip.ListItemId);

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'




INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect0', 0, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'



