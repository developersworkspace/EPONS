IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserByEmailAddress]')
DROP PROCEDURE [EPONS].[FindUserByEmailAddress] 
GO

CREATE PROCEDURE [EPONS].[FindUserByEmailAddress] 
@emailAddress VARCHAR(255)
AS
SELECT 
[user].[UserId] AS [Id],
[credentials].[Username] AS [Username],
[user].[EmailAddress] AS [EmailAddress],
[user].[FirstName] AS [Firstname],
[user].[LastName] AS [Lastname],
CASE WHEN [user].[DisclaimerAgreeTimestamp] IS NULL
THEN CAST(0 AS BIT)
ELSE CAST(1 AS BIT)
END AS [AcceptedDisclaimer],
[user].[IsSuperAdmin] AS [IsSuperAdmin]
FROM [User].[Details] AS [user] 
INNER JOIN [User].[Credentials] AS [credentials]
ON [credentials].[UserId] = [user].[UserId]
WHERE [EmailAddress] = @emailAddress

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserByEmailAddress]', 'Executed'