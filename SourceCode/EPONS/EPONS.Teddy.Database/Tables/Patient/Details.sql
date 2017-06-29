IF OBJECT_ID('[Patient].[Details]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[Details]; 

CREATE TABLE [Patient].[Details] (
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[Firstname] VARCHAR(256) NOT NULL,
	[Lastname] VARCHAR(256) NOT NULL,
	[DateOfBirth] DATE NULL,
	[GenderId] UNIQUEIDENTIFIER NULL,
	[RaceId] UNIQUEIDENTIFIER NULL,
	[IdentificationNumber] VARCHAR(256) NULL,
	[MedicalSchemeId] UNIQUEIDENTIFIER NULL,
	[TitleId] UNIQUEIDENTIFIER NULL,
	[ContactNumber] VARCHAR(64) NULL,
	[Street] VARCHAR(256) NULL,
	[PostalCode] VARCHAR(256) NULL,
	[NameOfNextOfKin] VARCHAR(256) NULL,
	[ContactNumberOfNextOfKin] [varchar](25) NULL,
	[MedicalSchemeMembershipNumber] VARCHAR(256) NULL,
	[Avatar] IMAGE NULL,
	[CityId] UNIQUEIDENTIFIER NULL,
	[EmailAddressOfNextOfKin] VARCHAR(256) NULL,
	[RelationshipOfNextOfKin] VARCHAR(256) NULL,
	[ResidentialEnvironmentId] UNIQUEIDENTIFIER NULL,
	[ImpairmentGroupId] UNIQUEIDENTIFIER NULL
)

