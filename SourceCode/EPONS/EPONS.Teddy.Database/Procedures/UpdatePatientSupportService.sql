IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdatePatientSupportService]')
DROP PROCEDURE [EPONS].[UpdatePatientSupportService] 
GO

CREATE PROCEDURE [EPONS].[UpdatePatientSupportService] 
@patientId UNIQUEIDENTIFIER,
@supportServiceId UNIQUEIDENTIFIER,
@text VARCHAR(255)
AS
DECLARE @rowCount INT

SELECT @rowCount = COUNT(*)
FROM [Patient].[SupportServices]
WHERE [PatientId] = @patientId
AND [SupportServiceId] = @supportServiceId

IF (@rowCount = 0)
	INSERT INTO [Patient].[SupportServices] ([PatientId], [SupportServiceId], [Text])
	VALUES (@patientId, @supportServiceId, @text)
ELSE
	UPDATE [Patient].[SupportServices] SET [Text] = @text 
	WHERE [PatientId] = @patientId
	AND [SupportServiceId] = @supportServiceId

EXEC [Audit].[CreateLogEntry] '[EPONS].[UpdatePatientSupportService]', 'Executed'