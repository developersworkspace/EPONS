CREATE PROCEDURE [api].[UserList]
@username VARCHAR(128),
@query VARCHAR(128),
@skip INT
AS
SELECT 
[account].[AccountId] AS [Id],
[account].[Username] AS [Username],
[account].[EmailAddress] AS [EmailAddress],
CASE [status].[Name] 
WHEN 'Active' THEN 'Yes'
ELSE 'No'
END AS [IsActive]
FROM [dbo].[Account] AS [account]
INNER JOIN [dbo].[ListItem] AS [status]
ON [status].[ListItemId] = [account].[StatusId]
WHERE
@query IS NULL 
OR
[account].[EmailAddress] LIKE '%' + @query + '%'
OR
[account].[Username] LIKE '%' + @query + '%'
OR 
[account].[FirstName] LIKE '%' + @query + '%'
OR
[account].[LastName] LIKE '%' + @query + '%'
ORDER BY [account].[Username] ASC
OFFSET @skip ROWS
FETCH NEXT 10 ROWS ONLY