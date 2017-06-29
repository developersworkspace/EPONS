DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'

INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('AdmitFrom','Admit From', @StatusID, getdate(), @AccountId);

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Home','Home', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmitFrom' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'AcuteHospital','Acute Hospital', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmitFrom' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'NonAcuteService','Non-Acute Service', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmitFrom' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'SubAcuteFacility','Sub Acute Facility', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmitFrom' AND ParentId IS NULL;


INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('DischargeTo','Discharge To', @StatusID, getdate(), @AccountId);

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Home','Home', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='DischargeTo' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'AcuteHospital','Acute Hospital', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='DischargeTo' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'NonAcuteService','Non-Acute Service', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='DischargeTo' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'SubAcuteFacility','Sub Acute Facility', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='DischargeTo' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Deceased','Deceased', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='DischargeTo' AND ParentId IS NULL;