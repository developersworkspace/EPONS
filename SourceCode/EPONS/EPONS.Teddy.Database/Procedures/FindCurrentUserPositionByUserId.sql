IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindCurrentUserPositionByUserId]')
DROP PROCEDURE [EPONS].[FindCurrentUserPositionByUserId] 
GO

CREATE PROCEDURE [EPONS].[FindCurrentUserPositionByUserId] 
@userId UNIQUEIDENTIFIER
AS
SELECT
[user].[CurrentFacilityId] AS [Id],
[Position].[Name] AS [Name]
FROM [User].[Details]  AS [user]
INNER JOIN [ValueObjects].[Positions] AS [Position]
ON [Position].[PositionId] = [user].[CurrentPositionId]
AND [UserId] = @userId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindCurrentUserPositionByUserId]', 'Executed'