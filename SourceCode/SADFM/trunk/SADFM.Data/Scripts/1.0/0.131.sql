ALTER TABLE [Case] ADD AdmissionStatusId uniqueidentifier, LastTreatment DATETIME, LastTreatmentNote varchar(255), ReferringDoctor varchar(255),
ReferringDoctorContact varchar(255),
ReferringDoctorEmail varchar(255),
ReferringDoctorPracticeNumber varchar(255);

ALTER TABLE [Case] ADD CONSTRAINT FK_Case_AdmitFrom FOREIGN KEY (AdmissionStatusId) REFERENCES ListItem (ListItemId);


DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('AdmissionStatus','Admission Status', @StatusID, getdate(), @AccountId);

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Voluntary','Voluntary', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmissionStatus' AND ParentId IS NULL;


INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Involuntary','Involuntary', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='AdmissionStatus' AND ParentId IS NULL;


