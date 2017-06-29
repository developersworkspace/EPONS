INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Gender', 'Gender', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Male', 'Male', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Gender');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Female', 'Female', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Gender');

INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'Race', 'Race', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');

INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Asian', 'Asian', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Black', 'Black', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Coloured', 'Coloured', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Indian', 'Indian', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'White', 'White', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'Other', 'Other', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Race');

INSERT INTO ListItem (Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	'MedicalScheme', 'Medical Scheme', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active');
INSERT INTO ListItem (ParentId, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'None', 'None', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'MedicalScheme');

CREATE TABLE Patient (
	PatientId uniqueidentifier not null,
	FirstName nvarchar(255) not null,
	LastName nvarchar(255) not null,
	BirthDate datetime,
	GenderId uniqueidentifier,
	RaceId uniqueidentifier,
	IDNumber varchar(25),
	MedicalSchemeId uniqueidentifier);
ALTER TABLE Patient ADD CONSTRAINT PK_Patient PRIMARY KEY (PatientId);
ALTER TABLE Patient ADD CONSTRAINT DF_Patient_PatientId DEFAULT (newid()) FOR PatientId;
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_Gender FOREIGN KEY (GenderId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_Race FOREIGN KEY (RaceId) REFERENCES ListItem (ListItemId);
ALTER TABLE Patient ADD CONSTRAINT FK_Patient_MedicalScheme FOREIGN KEY (MedicalSchemeId) REFERENCES ListItem (ListItemId);