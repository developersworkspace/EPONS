IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindVisitsByPatientId]')
DROP PROCEDURE [EPONS].[FindVisitsByPatientId] 
GO

CREATE PROCEDURE [EPONS].[FindVisitsByPatientId] 
@patientId UNIQUEIDENTIFIER
AS
SELECT 
[visit].[VisitId] AS [Id],
[visit].[Timestamp] AS [Timestamp],
[user].[Firstname] + ' ' + [user].[Lastname] AS [User]
INTO #visits
FROM [Visit].[Details] AS [visit]
INNER JOIN [User].[Details] AS [user]
ON [user].[UserId] = [visit].[UserId]
AND
[visit].[PatientId] = @patientId
ORDER BY [Timestamp] DESC

SELECT * FROM #visits

SELECT DISTINCT
[visit].[Id],  
[measurementTool].[Name] AS [MeasurementTool]
FROM #visits AS [visit]
INNER JOIN [Visit].[ScoreValues] AS [visitScore]
ON [visitScore].[VisitId] = [visit].[Id]
INNER JOIN [ValueObjects].[ScoreValues] AS [scoreValue]
ON [scoreValue].[ScoreValueId] = [visitScore].[ScoreValueId]
INNER JOIN [ValueObjects].[ScoreItems] AS [scoreItem]
ON [scoreItem].[ScoreItemId] = [scoreValue].[ScoreItemId]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [scoreItem].[MeasurementToolId]

DROP TABLE #visits

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindVisitsByPatientId]', 'Executed'