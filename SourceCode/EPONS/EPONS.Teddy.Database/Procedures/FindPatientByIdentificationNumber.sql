IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindPatientByIdentificationNumber]')
DROP PROCEDURE [EPONS].[FindPatientByIdentificationNumber] 
GO

CREATE PROCEDURE [EPONS].[FindPatientByIdentificationNumber] 
@identificationNumber VARCHAR(255)
AS
SELECT 
[patient].[PatientId] AS [Id]
FROM [Patient].[Details] AS [patient]
WHERE [patient].[IdentificationNumber] = @identificationNumber

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindPatientByIdentificationNumber]', 'Executed'