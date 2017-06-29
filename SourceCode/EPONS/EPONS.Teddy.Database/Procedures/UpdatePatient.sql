IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdatePatient]')
DROP PROCEDURE [EPONS].[UpdatePatient] 
GO

CREATE PROCEDURE [EPONS].[UpdatePatient] 
@patientId UNIQUEIDENTIFIER,
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
@cityId UNIQUEIDENTIFIER,
@emailAddressOfNextOfKin VARCHAR(255),
@relantionshipOfNextOfKin VARCHAR(255),
@residentialEnvironmentId UNIQUEIDENTIFIER
AS
UPDATE [Patient].[Details]
SET [Firstname] = @firstname,
[Lastname] = @lastname,
[DateOfBirth] = @dateOfBirth,
[GenderId] = @genderId,
[RaceId] = @raceId, 
[IdentificationNumber] = @identificationNumber,
[MedicalSchemeId] = @medicalSchemeId,
[TitleId] = @titleId,
[ContactNumber] = @contactNumber,
[Street] = @street,
[PostalCode] = @postalCode,
[NameOfNextOfKin] = @nameOfNextOfKin,
[ContactNumberOfNextOfKin] = @contactNumberOfNextOfKin,
[MedicalSchemeMembershipNumber] = @medicalSchemeNumber,
[CityId] = @cityId,
[EmailAddressOfNextOfKin] = @emailAddressOfNextOfKin,
[RelationshipOfNextOfKin] = @relantionshipOfNextOfKin,
[ResidentialEnvironmentId] = @residentialEnvironmentId
WHERE [PatientId] = @patientId


EXEC [Audit].[CreateLogEntry] '[EPONS].[UpdatePatient]', 'Executed'


