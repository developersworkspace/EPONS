IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserAvatarById]')
DROP PROCEDURE [EPONS].[FindUserAvatarById] 
GO

CREATE PROCEDURE [EPONS].[FindUserAvatarById] 
@userId UNIQUEIDENTIFIER
AS
SELECT [Avatar] FROM [User].[Details] WHERE [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserAvatarById]', 'Executed'