IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserFacilityPermissionsByUserId]')
DROP PROCEDURE [EPONS].[FindUserFacilityPermissionsByUserId] 
GO

CREATE PROCEDURE [EPONS].[FindUserFacilityPermissionsByUserId] 
@userId UNIQUEIDENTIFIER
AS
SELECT 
@userId AS [UserId],
[userFacilityPermission].[PermissionId] AS [PermissionId],
[userFacilityPermission].[FacilityId] AS [FacilityId],
[facility].[Name] AS [Facility],
[permission].[Name] AS [Permission]
FROM [User].[Permissions] AS [userFacilityPermission]
INNER JOIN [Facility].[Details] AS [facility]
ON 
[userFacilityPermission].[UserId] = @userId
AND
[facility].[FacilityId] = [userFacilityPermission].[FacilityId]
INNER JOIN [ValueObjects].[Permissions] AS [permission]
ON [permission].[PermissionId] = [userFacilityPermission].[PermissionId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserFacilityPermissionsByUserId]', 'Executed'
