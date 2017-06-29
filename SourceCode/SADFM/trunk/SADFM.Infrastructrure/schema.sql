
CREATE TABLE [Account]
(
[AccountId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Username] varchar(255) NOT NULL,
[Password] varchar(255) NULL,
[EmailAddress] varchar(255) NOT NULL,
[Firstname] varchar(255) NULL,
[Lastname] varchar(255) NULL,
[InvalidLoginAttempts] int NULL,
[FirstSignIn] bit NULL,
[DateCreatedTimestamp] DATETIME NOT NULL,
[LastUpdatedTimestamp] DATETIME NULL,
[IDNumberType] varchar(255) NULL,
[IDNumber] varchar(255) NULL,
[Avatar] varbinary(max) NULL,
[SecurityQuestionAnswer] varchar(50) NULL,
[DisclaimerAgreeTimestamp] DATETIME NULL,
[PracticeNumber] varchar(50) NULL,
[RegistrationNumber] varchar(50) NULL,
[AccountTypeId] uniqueidentifier NOT NULL,
[LanguageId] uniqueidentifier NULL,
[StatusId] uniqueidentifier NOT NULL,
[TitleId] uniqueidentifier NULL,
[ProfessionalBodyId] uniqueidentifier NULL,
);

ALTER TABLE [Account] ADD CONSTRAINT [PK_Account] PRIMARY KEY (AccountId);


CREATE TABLE [AccountType]
(
[AccountTypeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [AccountType] ADD CONSTRAINT [PK_AccountType] PRIMARY KEY (AccountTypeId);

CREATE TABLE [Careplan]
(
[CareplanId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[SortOrder] int NOT NULL,
);

ALTER TABLE [Careplan] ADD CONSTRAINT [PK_Careplan] PRIMARY KEY (CareplanId);

CREATE TABLE [City]
(
[CityId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[ProvinceId] uniqueidentifier NOT NULL
);

ALTER TABLE [City] ADD CONSTRAINT [PK_City] PRIMARY KEY (CityId);

CREATE TABLE [Country]
(
[CountryId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Country] ADD CONSTRAINT [PK_Country] PRIMARY KEY (CountryId);

CREATE TABLE [Province]
(
[ProvinceId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[CountryId] uniqueidentifier NOT NULL
);

ALTER TABLE [Province] ADD CONSTRAINT [PK_Province] PRIMARY KEY (ProvinceId);

CREATE TABLE [Facility]
(
[FacilityId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[FacilityGroupId] uniqueidentifier NOT NULL,
[MonthlyRate] float NULL,
[IsFunder] bit NOT NULL 
);

ALTER TABLE [Facility] ADD CONSTRAINT [PK_Facility] PRIMARY KEY (FacilityId);

CREATE TABLE [AdmissionType]
(
[AdmissionTypeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [AdmissionType] ADD CONSTRAINT [PK_AdmissionType] PRIMARY KEY (AdmissionTypeId);

CREATE TABLE [AdmissionStatus]
(
[AdmissionStatusId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [AdmissionStatus] ADD CONSTRAINT [PK_AdmissionStatus] PRIMARY KEY (AdmissionStatusId);


CREATE TABLE [FacilityGroup]
(
[FacilityGroupId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [FacilityGroup] ADD CONSTRAINT [PK_FacilityGroup] PRIMARY KEY (FacilityGroupId);

CREATE TABLE [Permission]
(
[PermissionId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Permission] ADD CONSTRAINT [PK_Permission] PRIMARY KEY (PermissionId);

CREATE TABLE [ICD10Code]
(
[ICD10CodeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Code] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
);

ALTER TABLE [ICD10Code] ADD CONSTRAINT [PK_ICD10Code] PRIMARY KEY (ICD10CodeId);

CREATE TABLE [Language]
(
[LanguageId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Language] ADD CONSTRAINT [PK_Language] PRIMARY KEY (LanguageId);

CREATE TABLE [Race]
(
[RaceId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Race] ADD CONSTRAINT [PK_Race] PRIMARY KEY (RaceId);

CREATE TABLE [Gender]
(
[GenderId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Gender] ADD CONSTRAINT [PK_Gender] PRIMARY KEY (GenderId);

CREATE TABLE [Title]
(
[TitleId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Title] ADD CONSTRAINT [PK_Title] PRIMARY KEY (TitleId);

CREATE TABLE [Status]
(
[StatusId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [Status] ADD CONSTRAINT [PK_Status] PRIMARY KEY (StatusId);

CREATE TABLE [ServiceType]
(
[ServiceTypeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[Code] varchar(255) NOT NULL,
[ServiceTypeGroupId] uniqueidentifier NOT NULL
);

ALTER TABLE [ServiceType] ADD CONSTRAINT [PK_ServiceType] PRIMARY KEY (ServiceTypeId);


CREATE TABLE [ScoreValue]
(
[ScoreValueId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
[ToolTip] varchar(255) NULL,
[SortOrder] int NOT NULL,
[Value] int NOT NULL,
[ScoreItemId] uniqueidentifier NOT NULL
);

ALTER TABLE [ScoreValue] ADD CONSTRAINT [PK_ScoreValue] PRIMARY KEY (ScoreValueId);


CREATE TABLE [PatientScoreValue]
(
[PatientId] uniqueidentifier NOT NULL,
[ScoreValueId] uniqueidentifier NOT NULL,
[DateCreatedTimestamp] DATETIME NOT NULL,
[LastUpdatedTimestamp] DATETIME NULL,
);

ALTER TABLE [PatientScoreValue] ADD CONSTRAINT [PK_ScoreValue] PRIMARY KEY (ScoreValueId, PatientId);


CREATE TABLE [ScoreItem]
(
[ScoreItemId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[Description] varchar(255) NOT NULL,
[ToolTip] varchar(255) NULL,
[SortOrder] int NOT NULL,
[CareplanId] uniqueidentifier NULL,
[ParentScoreItemId] uniqueidentifier NULL
);

ALTER TABLE [ScoreItem] ADD CONSTRAINT [PK_ScoreItem] PRIMARY KEY (ScoreItemId);


CREATE TABLE [MedicalScheme]
(
[MedicalSchemeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [MedicalScheme] ADD CONSTRAINT [PK_MedicalScheme] PRIMARY KEY (MedicalSchemeId);


CREATE TABLE [FacilityMedicalScheme]
(
[MedicalSchemeId] uniqueidentifier NOT NULL,
[FacilityId] uniqueidentifier NOT NULL,
);

ALTER TABLE [FacilityMedicalScheme] ADD CONSTRAINT [PK_FacilityMedicalScheme] PRIMARY KEY (MedicalSchemeId, FacilityId);


CREATE TABLE [RoleGroup]
(
[RoleGroupId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [RoleGroup] ADD CONSTRAINT [PK_RoleGroup] PRIMARY KEY (RoleGroupId);

CREATE TABLE [Role]
(
[RoleId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[RoleGroupId] uniqueidentifier NOT NULL
);

ALTER TABLE [Role] ADD CONSTRAINT [PK_Role] PRIMARY KEY (RoleId);



CREATE TABLE [ServiceTypeGroup]
(
[ServiceTypeGroupId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[Code] varchar(255) NOT NULL,
[Type] varchar(255) NOT NULL,
);

ALTER TABLE [ServiceTypeGroup] ADD CONSTRAINT [PK_ServiceTypeGroup] PRIMARY KEY (ServiceTypeGroupId);


CREATE TABLE [ResidentialEnviromentType]
(
[ResidentialEnviromentTypeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [ResidentialEnviromentType] ADD CONSTRAINT [PK_ResidentialEnviromentType] PRIMARY KEY (ResidentialEnviromentTypeId);


CREATE TABLE [ProfessionalBody]
(
[ProfessionalBodyId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
);

ALTER TABLE [ProfessionalBody] ADD CONSTRAINT [PK_ProfessionalBody] PRIMARY KEY (ProfessionalBodyId);


CREATE TABLE [PatientCarePlan]
(
[PatientCarePlanId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[PatientId] uniqueidentifier NOT NULL,
[FacilityId] uniqueidentifier NOT NULL,
[CareplanId] uniqueidentifier NOT NULL,
[FrequencyId] uniqueidentifier NOT NULL,
);

ALTER TABLE [PatientCarePlan] ADD CONSTRAINT [PK_PatientCarePlan] PRIMARY KEY (PatientCarePlanId);

CREATE TABLE [FacilityServiceType]
(
[FacilityServiceTypeId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[ContactNumber] varchar(255) NULL,
[Street] varchar(255) NULL,
[PostalCode] varchar(255) NULL,
[CountryId] uniqueidentifier NOT NULL,
[CityId] uniqueidentifier NOT NULL,
[ProvinceId] uniqueidentifier NOT NULL,
[FacilityId] uniqueidentifier NOT NULL,
);

ALTER TABLE [FacilityServiceType] ADD CONSTRAINT [PK_FacilityServiceType] PRIMARY KEY (FacilityServiceTypeId);

CREATE TABLE [FacilityPermissions]
(
[FacilityPermissionsId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[FacilityId] uniqueidentifier NOT NULL,
[AccountId] uniqueidentifier NOT NULL
);

ALTER TABLE [FacilityPermissions] ADD CONSTRAINT [PK_FacilityPermissions] PRIMARY KEY (FacilityPermissionsId);

CREATE TABLE [FacilityPermissionsLink]
(
[FacilityPermissionsId] uniqueidentifier NOT NULL,
[PermissionId] uniqueidentifier NOT NULL,
[DateCreatedTimestamp] DateTime NOT NULL,
[LastUpdatedTimestamp] DateTime NULL
);

ALTER TABLE [FacilityPermissionsLink] ADD CONSTRAINT [PK_FacilityPermissionsLink] PRIMARY KEY (FacilityPermissionsId,PermissionId);

CREATE TABLE [FacilityServiceTypeCareplan]
(
[FacilityServiceTypeId] uniqueidentifier NOT NULL,
[CareplanId] uniqueidentifier NOT NULL,
[DateCreatedTimestamp] DateTime NOT NULL,
[LastUpdatedTimestamp] DateTime NULL
);

ALTER TABLE [FacilityServiceTypeCareplan] ADD CONSTRAINT [PK_FacilityPermissionsLink] PRIMARY KEY (FacilityServiceTypeId,CareplanId);


CREATE TABLE [PatientFacility]
(
[PatientFacilityId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[PatientId] uniqueidentifier NOT NULL,
[FacilityId] uniqueidentifier NOT NULL,
[TeamMemberId] uniqueidentifier NOT NULL,
[CaseId] uniqueidentifier NULL,
[AllocationDate] DateTime NOT NULL,
[DischargeDate] DateTime NULL,
);

ALTER TABLE [PatientFacility] ADD CONSTRAINT [PK_PatientFacility] PRIMARY KEY (PatientFacilityId);


CREATE TABLE [Case]
(
[CaseId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[ReferringDoctorName] varchar(255) NULL,
[ReferringDoctorContact] varchar(255) NULL,
[ReferringDoctorEmailAddress] varchar(255) NULL,
[ReferringDoctorPracticeNumber] varchar(255) NULL,
[TreatingDoctorName] varchar(255) NULL,
[TreatingDoctorContact] varchar(255) NULL,
[TreatingDoctorEmail] varchar(255) NULL,
[TreatingDoctorPracticeNumber] varchar(255) NULL,
[StartDate] DateTime NOT NULL,
[EndDate] DateTime NULL,
[DateCreatedTimestamp] DateTime NOT NULL,
[LastUpdatedTimestamp] DateTime NULL,
[LastUpdatedAccountId] uniqueidentifier NULL,
[ICD10CodeId] uniqueidentifier NULL,
[PatientId] uniqueidentifier NOT NULL,
[AdmissionStatusId] uniqueidentifier NULL,
);

ALTER TABLE [Case] ADD CONSTRAINT [PK_Case] PRIMARY KEY (CaseId);


CREATE TABLE [Frequency]
(
[FrequencyId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Name] varchar(255) NOT NULL,
[FrequencyPerWeek] int NOT NULL,
);

ALTER TABLE [Frequency] ADD CONSTRAINT [PK_Frequency] PRIMARY KEY (FrequencyId);


CREATE TABLE [Patient]
(
[PatientId] uniqueidentifier DEFAULT NEWID() NOT NULL,
[Firstname] varchar(255) NOT NULL,
[Lastname] varchar(255) NOT NULL,
[BirthDate] DateTime NOT NULL,
[IDNumber] varchar(255) NULL,
[ContactNumber] varchar(255) NULL,
[Street] varchar(255) NULL,
[PostalCode] varchar(255) NULL,
[NextOfKinName] varchar(255) NULL,
[NextOfKinContact] varchar(255) NULL,
[MedicalSchemeMembershipNumber] varchar(255) NULL,
[DateCreatedTimestamp] DateTime NOT NULL,
[LastUpdatedTimestamp] DateTime NULL,
[LastUpdatedAccountId] uniqueidentifier NULL,
[Avatar] varbinary(max) NULL,
[NextOfKinEmailAddress] varchar(255) NULL,
[NextOfKinRelationship] varchar(255) NULL,
[CityId] uniqueidentifier NULL,
[AdmissionTypeId] uniqueidentifier NULL,
[CountryId] uniqueidentifier NULL,
[DischargeTypeId] uniqueidentifier NULL,
[GenderId] uniqueidentifier NULL,
[MedicalSchemeId] uniqueidentifier NULL,
[RaceId] uniqueidentifier NULL,
[ResidentialEnviromentTypeId] uniqueidentifier NULL,
[TitleId] uniqueidentifier NULL,
[ProvinceId] uniqueidentifier NULL
);

ALTER TABLE [Patient] ADD CONSTRAINT [PK_Patient] PRIMARY KEY (PatientId);


ALTER TABLE [Patient] ADD FOREIGN KEY (LastUpdatedAccountId) REFERENCES [Account] (AccountId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CountryId) REFERENCES [Country] (CountryId);
ALTER TABLE [Patient] ADD FOREIGN KEY (MedicalSchemeId) REFERENCES [MedicalScheme] (MedicalSchemeId);
ALTER TABLE [Patient] ADD FOREIGN KEY (RaceId) REFERENCES [Race] (RaceId);
ALTER TABLE [Patient] ADD FOREIGN KEY (GenderId) REFERENCES [Gender] (GenderId);
ALTER TABLE [Patient] ADD FOREIGN KEY (ResidentialEnviromentTypeId) REFERENCES [ResidentialEnviromentType] (ResidentialEnviromentTypeId);
ALTER TABLE [Patient] ADD FOREIGN KEY (TitleId) REFERENCES [Title] (TitleId);
ALTER TABLE [Patient] ADD FOREIGN KEY (ProvinceId) REFERENCES [Province] (ProvinceId);
ALTER TABLE [Case] ADD FOREIGN KEY (LastUpdatedAccountId) REFERENCES [Account] (AccountId);
ALTER TABLE [Case] ADD FOREIGN KEY (ICD10CodeId) REFERENCES [ICD10Code] (ICD10CodeId);
ALTER TABLE [Case] ADD FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [Case] ADD FOREIGN KEY (AdmissionStatusId) REFERENCES [AdmissionStatus] (AdmissionStatusId);
ALTER TABLE [FacilityPermissionsLink] ADD FOREIGN KEY (FacilityPermissionsId) REFERENCES [FacilityPermissions] (FacilityPermissionsId);
ALTER TABLE [FacilityPermissionsLink] ADD FOREIGN KEY (PermissionId) REFERENCES [Permission] (PermissionId);
ALTER TABLE [FacilityPermissions] ADD FOREIGN KEY (FacilityId) REFERENCES [Facility] (FacilityId);
ALTER TABLE [FacilityPermissions] ADD FOREIGN KEY (AccountId) REFERENCES [Account] (AccountId);
ALTER TABLE [FacilityServiceType] ADD FOREIGN KEY (FacilityId) REFERENCES [Facility] (FacilityId);
ALTER TABLE [FacilityServiceType] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [FacilityServiceType] ADD FOREIGN KEY (CountryId) REFERENCES [Country] (CountryId);
ALTER TABLE [FacilityServiceType] ADD FOREIGN KEY (ProvinceId) REFERENCES [Province] (ProvinceId);
ALTER TABLE [PatientCarePlan] ADD FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [PatientCarePlan] ADD FOREIGN KEY (CareplanId) REFERENCES [Careplan] (CareplanId);
ALTER TABLE [PatientCarePlan] ADD FOREIGN KEY (FrequencyId) REFERENCES [Frequency] (FrequencyId);
ALTER TABLE [PatientCarePlan] ADD FOREIGN KEY (FacilityId) REFERENCES [Facility] (FacilityId);
ALTER TABLE [Role] ADD FOREIGN KEY (RoleGroupId) REFERENCES [RoleGroup] (RoleGroupId);
ALTER TABLE [ServiceType] ADD FOREIGN KEY (ServiceTypeGroupId) REFERENCES [ServiceTypeGroup] (ServiceTypeGroupId);
ALTER TABLE [Account] ADD FOREIGN KEY (AccountTypeId) REFERENCES [AccountType] (AccountTypeId);
ALTER TABLE [Account] ADD FOREIGN KEY (StatusId) REFERENCES [Status] (StatusId);
ALTER TABLE [Account] ADD FOREIGN KEY (TitleId) REFERENCES [Title] (TitleId);
ALTER TABLE [Account] ADD FOREIGN KEY (LanguageId) REFERENCES [Language] (LanguageId);
ALTER TABLE [Account] ADD FOREIGN KEY (ProfessionalBodyId) REFERENCES [ProfessionalBody] (ProfessionalBodyId);
ALTER TABLE [PatientFacility] ADD FOREIGN KEY (CaseId) REFERENCES [Case] (CaseId);
ALTER TABLE [PatientFacility] ADD FOREIGN KEY (TeamMemberId) REFERENCES [Account] (AccountId);
ALTER TABLE [PatientFacility] ADD FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [PatientFacility] ADD FOREIGN KEY (FacilityId) REFERENCES [Facility] (FacilityId);
ALTER TABLE [Facility] ADD FOREIGN KEY (FacilityGroupId) REFERENCES [FacilityGroup] (FacilityGroupId);
ALTER TABLE [ScoreItem] ADD FOREIGN KEY (CareplanId) REFERENCES [Careplan] (CareplanId);
ALTER TABLE [ScoreItem] ADD FOREIGN KEY (ParentScoreItemId) REFERENCES [ScoreItem] (ScoreItemId);
ALTER TABLE [ScoreValue] ADD FOREIGN KEY (ScoreItemId) REFERENCES [ScoreItem] (ScoreItemId);
ALTER TABLE [City] ADD FOREIGN KEY (ProvinceId) REFERENCES [Province] (ProvinceId);
ALTER TABLE [Province] ADD FOREIGN KEY (CountryId) REFERENCES [Country] (CountryId);
ALTER TABLE [FacilityMedicalScheme] ADD FOREIGN KEY (MedicalSchemeId) REFERENCES [MedicalScheme] (MedicalSchemeId);
ALTER TABLE [FacilityMedicalScheme] ADD FOREIGN KEY (FacilityId) REFERENCES [Facility] (FacilityId);
ALTER TABLE [PatientScoreValue] ADD FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [PatientScoreValue] ADD FOREIGN KEY (ScoreValueId) REFERENCES [ScoreValue] (ScoreValueId);
ALTER TABLE [FacilityServiceTypeCareplan] ADD FOREIGN KEY (FacilityServiceTypeId) REFERENCES [FacilityServiceType] (FacilityServiceTypeId);
ALTER TABLE [FacilityServiceTypeCareplan] ADD FOREIGN KEY (CareplanId) REFERENCES [Careplan] (CareplanId);



ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
ALTER TABLE [Patient] ADD FOREIGN KEY (CityId) REFERENCES [City] (CityId);
