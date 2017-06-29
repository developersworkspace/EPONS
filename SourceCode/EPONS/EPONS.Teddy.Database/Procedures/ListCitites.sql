IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListCities]')
DROP PROCEDURE [EPONS].[ListCities] 
GO

CREATE PROCEDURE [EPONS].[ListCities] 
@provinceId UNIQUEIDENTIFIER
AS
SELECT 
[city].[CityId] AS [Id],
[city].[Name] AS [Name]
FROM [ValueObjects].[Cities] AS [city]
WHERE [city].[ProvinceId] = @provinceId
ORDER BY [Name] ASC 

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListCities]', 'Executed'