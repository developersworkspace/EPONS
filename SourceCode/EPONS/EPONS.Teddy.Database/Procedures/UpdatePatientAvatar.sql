IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdatePatientAvatar]')
DROP PROCEDURE [EPONS].[UpdatePatientAvatar] 
GO

CREATE PROCEDURE [EPONS].[UpdatePatientAvatar]
@patientId UNIQUEIDENTIFIER,
@avatar IMAGE
AS
UPDATE [Patient].[Details]
SET [Avatar] = @avatar
WHERE [PatientId] = @patientId


EXEC [Audit].[CreateLogEntry] '[EPONS].[UpdatePatientAvatar]', 'Executed'