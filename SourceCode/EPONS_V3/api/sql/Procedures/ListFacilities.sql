CREATE PROCEDURE [api].[ListFacilities] 
AS
SELECT 
[facility].[ProviderId] AS [Id],
[facility].[Name] AS [Name],
CONVERT(BIT, 0) AS [IsFunder]
FROM [dbo].[Provider] AS [facility]
UNION ALL
SELECT 
[facility].[ListItemId] AS [Id],
[facility].[Name] AS [Name],
CONVERT(BIT, 1) AS [IsFunder]
FROM [dbo].[ListItem] AS [parent] 
INNER JOIN [dbo].[ListItem] AS [facility]
ON [parent].[Name] = 'Funders'
AND [facility].[ParentId] = [parent].[ListItemId]
ORDER BY [Name] ASC