IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UnlockUser]')
DROP PROCEDURE [EPONS].[UnlockUser] 
GO

CREATE PROCEDURE [EPONS].[UnlockUser] 
@userId UNIQUEIDENTIFIER
AS

UPDATE  [User].[Credentials] SET [Locked] = 0 WHERE [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[UnlockUser]', 'Executed'