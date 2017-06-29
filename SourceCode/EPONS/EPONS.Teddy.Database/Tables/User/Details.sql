IF OBJECT_ID('[User].[Details]', 'U') IS NOT NULL 
  DROP TABLE [User].[Details]; 

CREATE TABLE [User].[Details] (
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[EmailAddress] VARCHAR(256) NOT NULL,
	[Firstname] VARCHAR(256) NULL,
	[Lastname] VARCHAR(256) NULL,
	[TitleId] UNIQUEIDENTIFIER NULL,
	[IdentificationNumber] VARCHAR(256) NULL,
	[ContactNumber] VARCHAR(64) NULL,
	[Avatar] IMAGE NULL,
	[DisclaimerAgreeTimestamp] DATE NULL,
	[PracticeNumber] VARCHAR(256) NULL,
	[ProfessionalBodyId] UNIQUEIDENTIFIER NULL,
	[RegistrationNumber] VARCHAR(64) NULL,
	[IsSuperAdmin] BIT NOT NULL,
	[CurrentFacilityId] UNIQUEIDENTIFIER NULL,
	[CurrentPositionId] UNIQUEIDENTIFIER NULL
)