IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindCurrentUserFacilityByUserId]')
DROP PROCEDURE [EPONS].[FindCurrentUserFacilityByUserId] 
GO

CREATE PROCEDURE [EPONS].[FindCurrentUserFacilityByUserId] 
@userId UNIQUEIDENTIFIER
AS
SELECT
[user].[CurrentFacilityId] AS [Id],
[facility].[Name] AS [Name]
FROM [User].[Details]  AS [user]
INNER JOIN [Facility].[Details] AS [facility]
ON [facility].[FacilityId] = [user].[CurrentFacilityId]
AND [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindCurrentUserFacilityByUserId]', 'Executed'