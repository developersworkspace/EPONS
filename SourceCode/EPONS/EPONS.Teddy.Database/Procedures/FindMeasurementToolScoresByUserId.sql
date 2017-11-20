IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindMeasurementToolScoresByUserId]')
DROP PROCEDURE [EPONS].[FindMeasurementToolScoresByUserId] 
GO

CREATE PROCEDURE [EPONS].[FindMeasurementToolScoresByUserId] 
@userId UNIQUEIDENTIFIER
AS
SELECT 
[measurementTool].[MeasurementToolId] AS [Id],
[measurementTool].[Name] AS [Name],
[measurementToolScore].[Score] AS [Score],
[measurementToolScore].[Timestamp] AS [Timestamp]
FROM [User].[MeasurementToolScores] AS [measurementToolScore]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [measurementToolScore].[MeasurementToolId]
AND [measurementToolScore].[UserId] = @userId
WHERE [measurementToolScore].[Timestamp] IN (
SELECT 
MAX([measurementToolScore].[Timestamp])
FROM [User].[MeasurementToolScores] AS [measurementToolScore]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [measurementToolScore].[MeasurementToolId]
AND [measurementToolScore].[UserId] = @userId
GROUP BY [measurementToolScore].[MeasurementToolId]
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindMeasurementToolScoresByUserId]', 'Executed'
