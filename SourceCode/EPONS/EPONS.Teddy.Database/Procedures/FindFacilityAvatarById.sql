IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindFacilityAvatarById]')
DROP PROCEDURE [EPONS].[FindFacilityAvatarById] 
GO

CREATE PROCEDURE [EPONS].[FindFacilityAvatarById] 
@facilityId UNIQUEIDENTIFIER
AS
SELECT 
[facility].[Avatar] AS [Avatar]
FROM [Facility].[Details] AS [facility]
WHERE [facility].[FacilityId] = @facilityId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindFacilityAvatarById]', 'Executed'