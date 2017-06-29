IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdateFacilityAvatar]')
DROP PROCEDURE [EPONS].[UpdateFacilityAvatar] 
GO

CREATE PROCEDURE [EPONS].[UpdateFacilityAvatar]
@facilityId UNIQUEIDENTIFIER,
@bytes IMAGE
AS
UPDATE [Facility].[Details]
SET [Avatar] = @bytes
WHERE [FacilityId] = @facilityId

