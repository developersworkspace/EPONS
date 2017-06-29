DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('SupportServices','Support services', @StatusID, getdate(), @AccountId);

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'SharingWithOtherPeople','Sharing with other people?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'FamilyFriendsSupport','Family/Friends support available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'HomeBasedNursingCare','Home based nursing care available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'AssistedLivingServices','Assisted Living Services available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'ParamedicServices','Paramedic services available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'EndOfLifeServices','Palliative/End of Life services available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'FrialCareServices','Frail care services available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'GPAvailable','GP available?', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='SupportServices' AND ParentId IS NULL;


