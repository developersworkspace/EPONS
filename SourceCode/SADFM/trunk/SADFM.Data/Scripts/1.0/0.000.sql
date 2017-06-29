
CREATE TABLE ListItem (
	ListItemId uniqueidentifier not null,
	ParentId uniqueidentifier,
	Name varchar(255) not null,
	Description varchar(255) not null,
	Code varchar(20),
	Value varchar(255),
	SortOrder int,
	Icon image,
	StatusId uniqueidentifier not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null);

ALTER TABLE ListItem ADD CONSTRAINT DF_ListItem_ListItemId DEFAULT NEWID() FOR ListItemId;
ALTER TABLE ListItem ADD CONSTRAINT PK_ListItem PRIMARY KEY (ListItemId);

-- Parents
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('Status','Status', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('DatabaseVersion','Database Version', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('Language','Language', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('AccountType','Account Type', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('Label','Label', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('Title','Title', newid(), getdate(), newid());
INSERT
INTO	ListItem
		(Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES	('Role','Role', newid(), getdate(), newid());

-- Status Active, Inactive
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Active','Active','A', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Status' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Inactive','Inactive','I', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Status' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Locked','Locked','L', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Status' AND ParentId IS NULL;

-- Account Types
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'SuperAdmin','Super Administrator', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='AccountType' AND ParentId IS NULL;

-- Language
INSERT
INTO	ListItem (ParentId, Name, Description, Code, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'English - UK','English - UK', 'en-GB', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Language' AND ParentId IS NULL;

-- Titles
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Mr','Mr', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Mrs','Mrs', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Ms','Ms', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Dr','Dr', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Judge','Judge', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Child','Child', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Pastor','Pastor', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Prof','Prof', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Reverend','Reverend', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Sergeant','Sergeant', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Sir','Sir', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Title' AND ParentId IS NULL;

-- Role
INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Medical Doctor','Medical Doctor', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Role' AND ParentId IS NULL;
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Surgeon','Surgeon', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Medical Doctor')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Physician','Physician', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Medical Doctor')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Psychiatrist','Psychiatrist', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Medical Doctor')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'GP','GP', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Medical Doctor')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Other','Other', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Medical Doctor')

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Nurse','Nurse', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Role' AND ParentId IS NULL;
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Professional Nurse','Professional Nurse', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Nurse')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Staff Nurse','Staff Nurse', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Nurse')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Nursing Assistant','Nursing Assistant', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Nurse')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Caregiver','Caregiver', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Nurse')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Other','Other', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Nurse')

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Therapist','Therapist', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Role' AND ParentId IS NULL;
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Physiotherapist','Physiotherapist', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Occupational therapist','Occupational therapist', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Speech therapist','Speech therapist', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Dietician','Dietician', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Social Worker','Social Worker', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Psychologist','Psychologist', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Counsellor','Counsellor', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Other','Other', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Therapist')

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Management / Administration','Management / Administration', newid(), getdate(), newid()
FROM	ListItem
WHERE	Name ='Role' AND ParentId IS NULL;
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Administrator','Administrator', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Management / Administration')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Case Manager','Case Manager', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Management / Administration')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Teamleader','Teamleader', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Management / Administration')
	INSERT
	INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
	SELECT	li.ListItemId,'Other','Other', newid(), getdate(), newid()
	FROM	ListItem lip
			INNER JOIN ListItem li ON (lip.ListItemId = li.ParentId AND lip.Name ='Role' AND lip.ParentId IS NULL AND li.Name = 'Management / Administration')

-- Update statusses to all active
UPDATE	l
SET		StatusId = lis.ListItemId
FROM	ListItem l
		INNER JOIN ListItem lisp ON (lisp.Name ='Status' AND lisp.ParentId IS NULL)
		INNER JOIN ListItem lis ON (lis.ParentId = lisp.ListItemId AND lis.Name ='Active');

ALTER TABLE ListItem ADD CONSTRAINT FK_ListItem_Parent FOREIGN KEY (ParentId) REFERENCES ListItem (ListItemId);
ALTER TABLE ListItem ADD CONSTRAINT FK_ListItem_Status FOREIGN KEY (StatusId) REFERENCES ListItem (ListItemId);
ALTER TABLE ListItem ADD CONSTRAINT UQ_ListItem UNIQUE (ParentId, Name);

CREATE TABLE ListItemLabel (
	ListItemId uniqueidentifier not null,
	LanguageId uniqueidentifier not null,
	Label nvarchar(255) not null);

ALTER TABLE ListItemLabel ADD CONSTRAINT FK_ListItemLabel_ListItem FOREIGN KEY (ListItemId) REFERENCES ListItem (ListItemId);
ALTER TABLE ListItemLabel ADD CONSTRAINT FK_ListItemLabel_Language FOREIGN KEY (LanguageId) REFERENCES ListItem (ListItemId);
ALTER TABLE ListItemLabel ADD CONSTRAINT PK_LIstItemLabel PRIMARY KEY (ListItemId, LanguageId);

CREATE TABLE Account (
	AccountId uniqueidentifier not null,
	AccountTypeId uniqueidentifier NOT NULL,
	Username nvarchar(255) not null,
	[Password] nvarchar(255) not null,
	EmailAddress nvarchar(255) not null,
	FirstName nvarchar(255),
	LastName nvarchar(255),
	InvalidLoginAttempts int,
	StatusId uniqueidentifier not null, -- (A)ctive, (I)nactive
	LanguageId uniqueidentifier,
	FirstSignIn bit not null,
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null,
	TitleId uniqueidentifier,
	RoleId uniqueidentifier,
	IDNumberType varchar(25),
	IDNumber varchar(25),
	ContactNumber varchar(25));

ALTER TABLE Account ADD CONSTRAINT PK_Account PRIMARY KEY (AccountId);
ALTER TABLE Account ADD CONSTRAINT DF_Account_DateCreatedTimestamp DEFAULT GETDATE() FOR DateCreatedTimestamp;
ALTER TABLE Account ADD CONSTRAINT DF_Account_AccountId DEFAULT NEWID() FOR AccountId;

INSERT
INTO	Account 
		(Username, EmailAddress, FirstName, LastName, [Password], StatusId, LastUpdateTimestamp, LastUpdateAccountId, AccountTypeId, FirstSignIn)
SELECT	'Yoda', 'info@returntrue.co.za','Return','True','8C-A0-25-40-8C-33-97-C4-9A-C5-76-FF-B7-44-D3-F6', lis.ListItemId, getdate(), newid(), (SELECT ListItemId FROM ListItem WHERE Name='SuperAdmin' AND ParentId = (SELECT ListItemId FROM ListItem WHERE Name='AccountType' AND ParentId IS NULL)), 0
FROM	ListItem lisp
		INNER JOIN ListItem lis ON (lisp.Name ='Status' AND lisp.ParentId IS NULL AND lis.ParentId = lisp.ListItemId AND lis.Name ='Active');

INSERT
INTO	Account 
		(Username, EmailAddress, FirstName, LastName, [Password], StatusId, LastUpdateTimestamp, LastUpdateAccountId, AccountTypeId, FirstSignIn)
SELECT	'antonio', 'antonio@sadfm.co.za','Antonio','Teixeira','1F-AA-9A-9A-83-11-95-6F-EE-C1-4A-FB-A5-B9-7B-E9', lis.ListItemId, getdate(), 
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp), (SELECT ListItemId FROM ListItem WHERE Name='SuperAdmin' AND ParentId = (SELECT ListItemId FROM ListItem WHERE Name='AccountType' AND ParentId IS NULL)), 0
FROM	ListItem lisp
		INNER JOIN ListItem lis ON (lisp.Name ='Status' AND lisp.ParentId IS NULL AND lis.ParentId = lisp.ListItemId AND lis.Name ='Active');
INSERT
INTO	Account 
		(Username, EmailAddress, FirstName, LastName, [Password], StatusId, LastUpdateTimestamp, LastUpdateAccountId, AccountTypeId, FirstSignIn)
SELECT	'skipdokter', 'skipdokter@yahoo.com','Jabez','Steenkamp','15-D4-DF-CD-EB-7F-68-E3-EF-3A-DC-1E-A7-FE-B8-42', lis.ListItemId, getdate(), 
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp), (SELECT ListItemId FROM ListItem WHERE Name='SuperAdmin' AND ParentId = (SELECT ListItemId FROM ListItem WHERE Name='AccountType' AND ParentId IS NULL)), 0
FROM	ListItem lisp
		INNER JOIN ListItem lis ON (lisp.Name ='Status' AND lisp.ParentId IS NULL AND lis.ParentId = lisp.ListItemId AND lis.Name ='Active');

UPDATE	Account
SET		LastUpdateAccountId = (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp);

UPDATE	ListItem
SET		LastUpdateAccountId = (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp);

ALTER TABLE Account ADD CONSTRAINT FK_Account_LastUpdateAccount FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);
ALTER TABLE Account ADD CONSTRAINT FK_Account_Status FOREIGN KEY (StatusId) REFERENCES ListItem (ListItemId);
ALTER TABLE Account ADD CONSTRAINT FK_Account_AccountType FOREIGN KEY (AccountTypeId) REFERENCES ListItem (ListItemId);
ALTER TABLE Account ADD CONSTRAINT UQ_Account_EmailAddress UNIQUE (EmailAddress);

ALTER TABLE ListItem ADD CONSTRAINT FK_ListItem_LastUpdateAccount FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);