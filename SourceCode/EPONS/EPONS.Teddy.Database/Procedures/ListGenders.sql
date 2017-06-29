IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListGenders]')
DROP PROCEDURE [EPONS].[ListGenders] 
GO

CREATE PROCEDURE [EPONS].[ListGenders] 
AS
SELECT 
[gender].[GenderId] AS [Id],
[gender].[Name] AS [Name]
FROM [ValueObjects].[Genders] AS [gender]
ORDER BY [gender].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListGenders]', 'Executed'