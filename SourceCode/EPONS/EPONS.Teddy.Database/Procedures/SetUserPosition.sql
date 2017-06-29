IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[SetUserFacility]')
DROP PROCEDURE [EPONS].[SetUserPosition] 
GO

CREATE PROCEDURE [EPONS].[SetUserPosition] 
@username VARCHAR(255),
@PositionId UNIQUEIDENTIFIER
AS

DECLARE @userId UNIQUEIDENTIFIER

SELECT TOP 1 @userId = [UserId] FROM [User].[Credentials] WHERE [Username] = @username

UPDATE [User].[Details]
SET [CurrentPositionId] = @PositionId
WHERE [UserId] = @userId


EXEC [Audit].[CreateLogEntry] '[EPONS].[SetUserPosition]', 'Executed'