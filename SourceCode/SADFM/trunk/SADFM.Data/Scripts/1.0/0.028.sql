INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Country', 'Country', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'SouthAfrica', 'South Africa', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Country');

INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Scale', 'Scale', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Alpha', 'Alpha', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Beta', 'Beta', 2, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Gamma', 'Gamma', 3, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Delta', 'Delta', 4, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Omega', 'Omega', 5, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');

INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Frequency', 'Frequency', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Daily', 'Daily', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Frequency');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'SecondDay', 'Every 2nd day', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Frequency');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Weekly', 'Weekly', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Frequency');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'SecondWeek', 'Every 2 weeks', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Frequency');
INSERT INTO ListItem (ParentId, Name, [Description], SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Monthly', 'Monthly', 1, lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Frequency');

ALTER TABLE Patient ADD
	TitleId uniqueidentifier,
	ContactNumber varchar(25),
	Street nvarchar(100),
	City nvarchar(100),
	Province nvarchar(100),
	PostalCode varchar(20),
	CountryId uniqueidentifier,
	NextOfKinName nvarchar(255),
	NextOfKinContact varchar(25),
	MedicalSchemeMembershipNumber varchar(25),
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null;

ALTER TABLE Patient ADD CONSTRAINT FK_Patient_Title FOREIGN KEY (TitleId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_Country FOREIGN KEY (CountryId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_LastUpdateAccount FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);

INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'ImpairmentGroup', 'Impairment Group', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

CREATE TABLE PatientImpairment (
	PatientImpairmentId uniqueidentifier not null,
	PatientId uniqueidentifier not null,
	ImpairmentGroupId uniqueidentifier not null,
	StartDate datetime not null,
	EndDate datetime,
	DateCreatedTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null);

ALTER TABLE PatientImpairment ADD CONSTRAINT PK_PatientImpairment PRIMARY KEY (PatientImpairmentId);
ALTER TABLE PatientImpairment ADD CONSTRAINT DF_PatientImpairment_PatientImpairmentId DEFAULT (newid()) FOR PatientImpairmentId;
ALTER TABLE PatientImpairment ADD CONSTRAINT FK_PatientImpairment_Patient FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);
ALTER TABLE PatientImpairment ADD CONSTRAINT FK_PatientImpairment_ImpairmentGroup FOREIGN KEY (ImpairmentGroupId) REFERENCES ListItem (ListItemId);
ALTER TABLE PatientImpairment ADD CONSTRAINT FK_PatientImpairment_LastUpdateAccount FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);

CREATE TABLE [Case] (
	CaseId uniqueidentifier not null,
	PatientId uniqueidentifier not null,
	StartDate datetime not null,
	AcuityTypeId uniqueidentifier not null,
	ICD10Id uniqueidentifier not null,
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null);

ALTER TABLE [Case] ADD CONSTRAINT PK_Case PRIMARY KEY ([CaseId]);
ALTER TABLE [Case] ADD CONSTRAINT DF_Case_CaseId DEFAULT (newid()) FOR CaseId;
ALTER TABLE [Case] ADD CONSTRAINT FK_Case_Patient FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);
ALTER TABLE [Case] ADD CONSTRAINT FK_Case_AcuityType FOREIGN KEY (AcuityTypeId) REFERENCES ListItem (ListItemId);
ALTER TABLE [Case] ADD CONSTRAINT FK_Case_ICD10 FOREIGN KEY (ICD10Id) REFERENCES ListItem (ListItemId);
ALTER TABLE [Case] ADD CONSTRAINT FK_Case_LastUpdateAccount FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);

CREATE TABLE [CaseScale] (
	CaseScaleId uniqueidentifier not null,
	CaseId uniqueidentifier not null,
	ScaleId uniqueidentifier not null,
	FrequencyId uniqueidentifier not null);

ALTER TABLE [CaseScale] ADD CONSTRAINT PK_CaseScale PRIMARY KEY ([CaseScaleId]);
ALTER TABLE [CaseScale] ADD CONSTRAINT DF_CaseScale_CaseScaleId DEFAULT (newid()) FOR CaseScaleId;
ALTER TABLE [CaseScale] ADD CONSTRAINT FK_CaseScale_Case FOREIGN KEY (CaseId) REFERENCES [Case] (CaseId);
ALTER TABLE [CaseScale] ADD CONSTRAINT FK_CaseScale_Scale FOREIGN KEY (ScaleId) REFERENCES ListItem (ListItemId);
ALTER TABLE [CaseScale] ADD CONSTRAINT FK_CaseScale_Frequency FOREIGN KEY (FrequencyId) REFERENCES ListItem (ListItemId);
