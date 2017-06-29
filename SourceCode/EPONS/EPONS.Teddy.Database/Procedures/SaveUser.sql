IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[SaveUser]')
DROP PROCEDURE [EPONS].[SaveUser] 
GO

CREATE PROCEDURE [EPONS].[SaveUser] 
@userId UNIQUEIDENTIFIER,
@firstname VARCHAR(255),
@lastname VARCHAR(255),
@titleId UNIQUEIDENTIFIER,
@emailAddress VARCHAR(255),
@contactNumber VARCHAR(255),
@identificationNumber VARCHAR(255),
@professionalBodyId UNIQUEIDENTIFIER,
@registrationNumber VARCHAR(255),
@practiceNumber VARCHAR(255),
@PositionId UNIQUEIDENTIFIER
AS
UPDATE [User].[Details] 
SET
[Firstname] = @firstname,
[Lastname] = @lastname,
[TitleId] = @titleId,
[EmailAddress] = @emailAddress,
[ContactNumber] = @contactNumber,
[IdentificationNumber] = @identificationNumber,
[ProfessionalBodyId] = @professionalBodyId,
[RegistrationNumber] = @registrationNumber,
[PracticeNumber] = @practiceNumbereNumber,
[CurrentPositionId] = @PositionId
WHERE [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[SaveUser]', 'Executed'