IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListProvinces]')
DROP PROCEDURE [EPONS].[ListProvinces] 
GO

CREATE PROCEDURE [EPONS].[ListProvinces] 
@countryId UNIQUEIDENTIFIER
AS
SELECT 
[province].[ProvinceId] AS [Id],
[province].[Name] AS [Name]
FROM [ValueObjects].[Provinces] AS [province]
WHERE [province].[CountryId] = @countryId
ORDER BY [province].[Name] ASC 

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListProvinces]', 'Executed'