IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListPermissions]')
DROP PROCEDURE [EPONS].[ListPermissions] 
GO

CREATE PROCEDURE [EPONS].[ListPermissions] 
AS
SELECT 
[permission].[PermissionId] AS [Id],
[permission].[Name] AS [Name]
FROM [ValueObjects].[Permissions] AS [permission]
ORDER BY [permission].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListPermissions]', 'Executed'