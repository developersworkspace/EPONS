IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListFacilityUsersByFacilityId]')
DROP PROCEDURE [EPONS].[ListFacilityUsersByFacilityId] 
GO

CREATE PROCEDURE [EPONS].[ListFacilityUsersByFacilityId] 
@facilityId UNIQUEIDENTIFIER
AS
SELECT DISTINCT
[user].[UserId] AS [Id],
[user].[FirstName] + ' ' + [user].[LastName] + ' (' + [credentials].[Username] + ')' AS [Name]
FROM [User].[Permissions] AS [facilityPermission]
INNER JOIN [User].[Details] AS [user]
ON 
[facilityPermission].[FacilityId] = @facilityId
AND 
[user].[UserId] = [facilityPermission].[UserId]
INNER JOIN [User].[Credentials] AS [credentials]
ON
[credentials].[UserId] = [user].[UserId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListFacilityUsersByFacilityId]', 'Executed'