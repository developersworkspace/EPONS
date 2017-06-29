IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateFacilityPermission]')
DROP PROCEDURE [EPONS].[CreateFacilityPermission] 
GO

CREATE PROCEDURE [EPONS].[CreateFacilityPermission] 
@facilityId UNIQUEIDENTIFIER,
@userId UNIQUEIDENTIFIER,
@permissionId UNIQUEIDENTIFIER
AS
INSERT INTO  [User].[Permissions]
(
[FacilityId],
[UserId],
[PermissionId]
)
VALUES
(
@facilityId,
@userId,
@permissionId
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateFacilityPermission]', 'Executed'