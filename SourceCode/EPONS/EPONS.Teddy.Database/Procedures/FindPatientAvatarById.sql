IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindPatientAvatarById]')
DROP PROCEDURE [EPONS].[FindPatientAvatarById] 
GO

CREATE PROCEDURE [EPONS].[FindPatientAvatarById] 
@patientId UNIQUEIDENTIFIER
AS
SELECT [Avatar] FROM [Patient].[Details] WHERE [PatientId] = @patientId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindPatientAvatarById]', 'Executed'