IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[DeleteFacilityPermission]')
DROP PROCEDURE [EPONS].[DeleteFacilityPermission] 
GO

CREATE PROCEDURE [EPONS].[DeleteFacilityPermission] 
@userId UNIQUEIDENTIFIER,
@facilityId UNIQUEIDENTIFIER,
@permissionId UNIQUEIDENTIFIER
AS
 DELETE FROM [User].[Permissions]
 WHERE [FacilityId] = @facilityId AND [UserId] = @userId AND [PermissionId] = @permissionId

EXEC [Audit].[CreateLogEntry] '[EPONS].[DeleteFacilityPermission]', 'Executed'