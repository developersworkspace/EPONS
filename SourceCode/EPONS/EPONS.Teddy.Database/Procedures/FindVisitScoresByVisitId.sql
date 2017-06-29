IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindVisitScoresByVisitId]')
DROP PROCEDURE [EPONS].[FindVisitScoresByVisitId] 
GO

CREATE PROCEDURE [EPONS].[FindVisitScoresByVisitId]
@visitId UNIQUEIDENTIFIER
AS
SELECT 
[ScoreValueId] AS [Id]
FROM [Visit].[ScoreValues]
WHERE [VisitId] = @visitId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindVisitScoresByVisitId]', 'Executed'
