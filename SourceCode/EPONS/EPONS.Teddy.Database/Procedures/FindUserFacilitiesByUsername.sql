IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUserFacilitiesByUsername]')
DROP PROCEDURE [EPONS].[FindUserFacilitiesByUsername] 
GO

CREATE PROCEDURE [EPONS].[FindUserFacilitiesByUsername] 
@username VARCHAR(255)
AS
SELECT
[facility].[FacilityId] AS [Id],
[facility].[Name] AS [Name]
FROM [User].[Permissions] AS [facilityPermission]
INNER JOIN [User].[Credentials] AS [credentials]
ON 
[credentials].[Username] = @username
AND 
[credentials].[UserId] = [facilityPermission].[UserId]
INNER JOIN [Facility].[Details] AS [facility]
ON [facility].[FacilityId] = [facilityPermission].[FacilityId]
ORDER BY [facility].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUserFacilitiesByUsername]', 'Executed'