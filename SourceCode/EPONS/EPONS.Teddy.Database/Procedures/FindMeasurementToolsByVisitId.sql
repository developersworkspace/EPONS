IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindMeasurementToolsByVisitId]')
DROP PROCEDURE [EPONS].[FindMeasurementToolsByVisitId] 
GO

CREATE PROCEDURE [EPONS].[FindMeasurementToolsByVisitId]
@visitId UNIQUEIDENTIFIER
AS
SELECT DISTINCT
[measurementTool].[MeasurementToolId] AS [MeasurementToolId],
[measurementTool].[Name] AS [Name]
INTO #measurementTools
FROM [Visit].[ScoreValues] AS [visitScore]
INNER JOIN [ValueObjects].[ScoreValues] AS [scoreValue]
ON [scoreValue].[ScoreValueId] = [visitScore].[ScoreValueId]
AND [visitScore].[VisitId] = @visitId
INNER JOIN [ValueObjects].[ScoreItems] AS [scoreItem]
ON [scoreItem].[ScoreItemId] = [scoreValue].[ScoreItemId]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [scoreItem].[MeasurementToolId]

SELECT 
[measurementTool].[MeasurementToolId] AS [Id],
[measurementTool].[Name] AS [Name],
[scoreItem].[ScoreItemId] AS [ScoreItemId],
[scoreItem].[Name] AS [ScoreItem],
[scoreItem].[SortOrder] AS [ScoreItemSortOrder],
[scoreItem].[Description] AS [ScoreItemDescription],
[scoreValue].[ScoreValueId] AS [ScoreValueId],
[scoreValue].[Value] AS [ScoreValue],
[scoreValue].[Description] AS [ScoreValueDescription],
[subScoreItem].[ScoreItemId] AS [SubScoreItemId],
[subScoreItem].[Name] AS [SubScoreItem],
[subScoreItem].[SortOrder] AS [SubScoreItemSortOrder],
[subScoreItemValue].[ScoreValueId] AS [SubScoreValueId],
[subScoreItemValue].[Value] AS [SubScoreValue]
FROM #measurementTools AS [measurementTool]
INNER JOIN [ValueObjects].[ScoreItems] AS [scoreItem]
ON [scoreItem].[MeasurementToolId] = [measurementTool].[MeasurementToolId]
AND [scoreItem].[ParentScoreItemId] IS NULL
INNER JOIN [ValueObjects].[ScoreValues] AS [scoreValue]
ON [scoreValue].[ScoreItemId] = [scoreItem].[ScoreItemId]
LEFT JOIN [ValueObjects].[ScoreItems] AS [subScoreItem]
ON [subScoreItem].[ParentScoreItemId] = [scoreItem].[ScoreItemId]
LEFT JOIN [ValueObjects].[ScoreValues] AS [subScoreItemValue]
ON [subScoreItemValue].[ScoreItemId] = [subScoreItem].[ScoreItemId]


DROP TABLE #measurementTools

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindMeasurementToolsByVisitId]', 'Executed'
