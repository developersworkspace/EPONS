IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListMedicalSchemes]')
DROP PROCEDURE [EPONS].[ListMedicalSchemes] 
GO

CREATE PROCEDURE [EPONS].[ListMedicalSchemes] 
AS
SELECT 
[medicalScheme].[MedicalSchemeId] AS [Id],
[medicalScheme].[Name] AS [Name]
FROM [ValueObjects].[MedicalSchemes] AS [medicalScheme]
ORDER BY [Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListMedicalSchemes]', 'Executed'