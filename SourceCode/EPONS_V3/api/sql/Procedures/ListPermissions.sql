CREATE PROCEDURE [api].[ListPermissions] 
AS
SELECT 
[permission].[ListItemId] AS [Id],
[permission].[Description] AS [Name]
FROM [ListItem] AS [permission]
INNER JOIN [dbo].[ListItem] AS [parent]
ON [parent].[ListItemId] = [permission].[ParentId]
AND [parent].[Name] = 'Permission'
AND [permission].[Name] != 'FunderCaseManager'
ORDER BY [permission].[SortOrder] ASC