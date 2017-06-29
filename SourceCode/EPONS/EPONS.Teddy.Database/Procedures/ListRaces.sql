IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListRaces]')
DROP PROCEDURE [EPONS].[ListRaces] 
GO

CREATE PROCEDURE [EPONS].[ListRaces] 
AS
SELECT 
[race].[RaceId] AS [Id],
[race].[Name] AS [Name]
FROM [ValueObjects].[Races] AS [race]
ORDER BY [race].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListRaces]', 'Executed'