IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreatePatient]')
DROP PROCEDURE [EPONS].[CreatePatient] 
GO

CREATE PROCEDURE [EPONS].[CreatePatient] 
@firstname VARCHAR(255),
@lastname VARCHAR(255),
@dateOfBirth DATETIME,
@genderId UNIQUEIDENTIFIER,
@raceId UNIQUEIDENTIFIER,
@identificationNumber VARCHAR(255),
@medicalSchemeId UNIQUEIDENTIFIER,
@titleId UNIQUEIDENTIFIER,
@contactNumber VARCHAR(255),
@street VARCHAR(255),
@postalCode VARCHAR(255),
@nameOfNextOfKin VARCHAR(255),
@contactNumberOfNextOfKin VARCHAR(255),
@medicalSchemeNumber VARCHAR(255),
@avatar IMAGE,
@cityId UNIQUEIDENTIFIER,
@emailAddressOfNextOfKin VARCHAR(255),
@relantionshipOfNextOfKin VARCHAR(255),
@residentialEnvironmentId UNIQUEIDENTIFIER
AS
DECLARE @patientId UNIQUEIDENTIFIER

SET @patientId = NEWID()

INSERT INTO [Patient].[Details]
(
[PatientId],
[Firstname],
[Lastname],
[DateOfBirth],
[GenderId],
[RaceId],
[IdentificationNumber],
[MedicalSchemeId],
[TitleId],
[ContactNumber],
[Street],
[PostalCode],
[NameOfNextOfKin],
[ContactNumberOfNextOfKin],
[MedicalSchemeMembershipNumber],
[Avatar],
[CityId],
[EmailAddressOfNextOfKin],
[RelationshipOfNextOfKin],
[ResidentialEnvironmentId],
[ImpairmentGroupId]
)
VALUES
(
@patientId,
@firstname,
@lastname,
@dateOfBirth,
@genderId,
@raceId,
@identificationNumber,
@medicalSchemeId,
@titleId,
@contactNumber,
@street,
@postalCode,
@nameOfNextOfKin,
@contactNumberOfNextOfKin,
@medicalSchemeNumber,
@avatar,
@cityId,
@emailAddressOfNextOfKin,
@relantionshipOfNextOfKin,
@residentialEnvironmentId,
NULL
)

SELECT @patientId AS [Id]

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreatePatient]', 'Executed'


