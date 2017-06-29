IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateDoctor]')
DROP PROCEDURE [EPONS].[CreateDoctor] 
GO

CREATE PROCEDURE [EPONS].[CreateDoctor]
@doctorName VARCHAR(256),
@contactNumber VARCHAR(64),
@emailAddress VARCHAR(256),
@practiceName VARCHAR(256),
@isActive BIT,
@doctorId int Output
AS
BEGIN
INSERT INTO [Patient].[Doctor]
	(
	[Name],
	[ContactNumber],
	[Email],
	[PracticeName],
	[IsActive]
	)
	VALUES
	(
	@doctorName,
	@contactNumber,
	@emailAddress,
	@practiceName,
	@isActive
	)

	SET @doctorId = SCOPE_IDENTITY()

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateDoctor]', 'Executed'
END