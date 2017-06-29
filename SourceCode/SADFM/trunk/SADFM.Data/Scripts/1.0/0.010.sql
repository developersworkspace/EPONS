DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('ChangeType','Change Type', @StatusID, getdate(), @AccountId);
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Insert','Insert','I', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ChangeType' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Update','Update','U', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ChangeType' AND ParentId IS NULL;

