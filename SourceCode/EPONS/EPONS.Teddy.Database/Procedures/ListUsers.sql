IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListUsers]')
DROP PROCEDURE [EPONS].[ListUsers] 
GO

CREATE PROCEDURE [EPONS].[ListUsers] 
@start INT,
@length INT,
@query VARCHAR(255)
AS
SELECT 
[user].[UserId] AS [Id],
[credentials].[Username] AS [Username],
[user].[EmailAddress] AS [EmailAddress],
CASE WHEN [credentials].[Locked] = 1
THEN CAST(0 AS BIT)
ELSE CAST(1 AS BIT)
END AS [IsActive],
[user].[IsSuperAdmin] AS [IsSuperAdmin]
INTO #users
FROM [User].[Details]  AS [user] 
INNER JOIN [User].[Credentials] AS [credentials]
ON [credentials].[UserId] = [user].[UserId]
AND (@query IS NULL
OR [user].[Firstname] LIKE '%' + @query + '%' 
OR [user].[Lastname] LIKE '%' + @query + '%'
OR [credentials].[Username] LIKE '%' + @query + '%')


SELECT * FROM #users
ORDER BY [Username] ASC 
OFFSET (@start) ROWS FETCH NEXT (@length) ROWS ONLY

SELECT COUNT(*) AS [Count] FROM #users

DROP TABLE #users

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListUsers]', 'Executed'