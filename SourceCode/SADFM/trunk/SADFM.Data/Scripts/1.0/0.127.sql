DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('ResidentialEnvironment','Residential Environment', @StatusID, getdate(), @AccountId);

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'PrivateHome','Private home', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ResidentialEnvironment' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'RetirementVillage','Retirement village', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ResidentialEnvironment' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'InformalSettlement','Informal settlement', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ResidentialEnvironment' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'FormalSettlement','Formal settlement', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='ResidentialEnvironment' AND ParentId IS NULL;
