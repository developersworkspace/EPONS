IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdateUserPassword]')
DROP PROCEDURE [EPONS].[UpdateUserPassword] 
GO

CREATE PROCEDURE [EPONS].[UpdateUserPassword] 
@userId UNIQUEIDENTIFIER,
@newPassword VARCHAR(255)
AS

UPDATE [User].[Credentials]
SET
[Password] = @newPassword
WHERE [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[UpdateUserPassword]', 'Executed'