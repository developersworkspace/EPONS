CREATE PROCEDURE [api].[FindUserFacilityPermissionsByUserId] 
@userId UNIQUEIDENTIFIER
AS
SELECT 
[facility].[Name] AS [Facility],
[permission].[Description] AS [Permission]
FROM [dbo].[ProviderAccountPermission] AS [userFacilityPermission]
INNER JOIN [dbo].[Account] AS [user]
ON [user].[AccountId] = @userId
AND
[user].[AccountId] = [userFacilityPermission].[AccountId]
INNER JOIN [dbo].[Provider] AS [facility]
ON [facility].[ProviderId] = [userFacilityPermission].[ProviderId]
INNER JOIN [dbo].[ListItem] AS [permission]
ON [permission].[ListItemId] = [userFacilityPermission].[PermissionId]
