IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[SetUserFacility]')
DROP PROCEDURE [EPONS].[SetUserFacility] 
GO

CREATE PROCEDURE [EPONS].[SetUserFacility] 
@username VARCHAR(255),
@facilityId UNIQUEIDENTIFIER
AS

DECLARE @userId UNIQUEIDENTIFIER

SELECT TOP 1 @userId = [UserId] FROM [User].[Credentials] WHERE [Username] = @username

UPDATE [User].[Details]
SET [CurrentFacilityId] = @facilityId
WHERE [UserId] = @userId


EXEC [Audit].[CreateLogEntry] '[EPONS].[SetUserFacility]', 'Executed'