IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListICD10Codes]')
DROP PROCEDURE [EPONS].[ListICD10Codes] 
GO

CREATE PROCEDURE [EPONS].[ListICD10Codes] 
@query VARCHAR(255)
AS
SELECT TOP 20
[icd10Code].[ICD10CodeId] AS [Id],
[icd10Code].[Code] + ' - ' + [icd10Code].[Name] AS [Name]
FROM [ValueObjects].[ICD10Codes] AS [icd10Code]
WHERE [icd10Code].[Code] + ' - ' + [icd10Code].[Name] = @query
ORDER BY [icd10Code].[Code] + ' - ' + [icd10Code].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListICD10Codes]', 'Executed'