
DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from  ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'

INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('ICD10','ICD10 Codes', @StatusID, getdate(), @AccountId);