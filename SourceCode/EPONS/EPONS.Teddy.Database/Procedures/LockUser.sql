IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[LockUser]')
DROP PROCEDURE [EPONS].[LockUser] 
GO

CREATE PROCEDURE [EPONS].[LockUser] 
@userId UNIQUEIDENTIFIER
AS

UPDATE  [User].[Credentials] SET [Locked] = 1 WHERE [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[LockUser]', 'Executed'