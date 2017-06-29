IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListPositions]')
DROP PROCEDURE [EPONS].[ListPositions] 
GO

CREATE PROCEDURE [EPONS].[ListPositions] 
AS
SELECT 
[Position].[PositionId] AS [Id],
[Position].[Name] AS [Name]
FROM [ValueObjects].[Positions] AS [Position]
ORDER BY [Position].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListPositons]', 'Executed'