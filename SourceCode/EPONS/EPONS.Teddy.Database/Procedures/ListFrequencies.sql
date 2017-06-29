IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListFrequencies]')
DROP PROCEDURE [EPONS].[ListFrequencies] 
GO

CREATE PROCEDURE [EPONS].[ListFrequencies] 
AS
SELECT 
[FrequencyId] AS [Id],
[Name] AS [Name]
FROM [ValueObjects].[Frequencies]
ORDER BY [Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListFrequencies]', 'Executed'