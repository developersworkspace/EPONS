IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserByUsernameAndPassword]')
DROP PROCEDURE [EPONS].[FindUserByUsernameAndPassword] 
GO

CREATE PROCEDURE [EPONS].[FindUserByUsernameAndPassword] 
@username VARCHAR(255),
@password VARCHAR(255)
AS
SELECT 
[userCredentials].[UserId] AS [Id],
[userCredentials].[Username] AS [Username],
[userDetails].[EmailAddress] AS [EmailAddress]
FROM [User].[Credentials] AS [userCredentials]
INNER JOIN  [User].[Details] AS [userDetails]
ON [userDetails].[UserId] = [userCredentials].[UserId]
AND
[userCredentials].[Username] = @username
AND [userCredentials].[Password] = @password
AND [userCredentials].[Locked] = 0

UPDATE [User].[Credentials]
SET [LastLoginTimestamp] = GETDATE()
WHERE [Username] = @username
AND [Password] = @password

UPDATE [User].[Credentials]
SET [InvalidLoginAttempts] = [InvalidLoginAttempts] + 1
WHERE [Username] = @username
AND [Password] != @password

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserByUsernameAndPassword]', 'Executed'

