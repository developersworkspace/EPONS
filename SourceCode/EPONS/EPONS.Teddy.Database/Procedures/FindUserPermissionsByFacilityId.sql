IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserPermissionsByFacilityId]')
DROP PROCEDURE [EPONS].[FindUserPermissionsByFacilityId] 
GO

CREATE PROCEDURE [EPONS].[FindUserPermissionsByFacilityId] 
@username VARCHAR(255),
@facilityId UNIQUEIDENTIFIER
AS
SELECT
[permission].[Name] AS [Name]
FROM [User].[Permissions] AS [facilityPermission]
INNER JOIN [User].[Credentials] AS [credentials]
ON [facilityPermission].[FacilityId] = @facilityId
AND
[credentials].[Username] = @username
AND 
[credentials].[UserId] = [facilityPermission].[UserId]
INNER JOIN [ValueObjects].[Permissions] AS [permission]
ON [permission].[PermissionId] = [facilityPermission].[PermissionId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserPermissionsByFacilityId]', 'Executed'
