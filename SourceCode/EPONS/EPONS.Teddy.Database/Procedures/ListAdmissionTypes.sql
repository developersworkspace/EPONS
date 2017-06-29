IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListAdmissionTypes]')
DROP PROCEDURE [EPONS].[ListAdmissionTypes] 
GO

CREATE PROCEDURE [EPONS].[ListAdmissionTypes] 
AS
SELECT 
[admissionType].[AdmissionTypeId] AS [Id],
[admissionType].[Name] AS [Name]
FROM [ValueObjects].[AdmissionTypes] AS [admissionType]
ORDER BY [admissionType].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListAdmissionTypes]', 'Executed'