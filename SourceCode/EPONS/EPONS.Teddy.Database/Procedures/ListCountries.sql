IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListCountries]')
DROP PROCEDURE [EPONS].[ListCountries] 
GO

CREATE PROCEDURE [EPONS].[ListCountries] 
AS
SELECT 
[country].[CountryId] AS [Id],
[country].[Name] AS [Name]
FROM [ValueObjects].[Countries] AS [country]
ORDER BY [country].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListCountries]', 'Executed'