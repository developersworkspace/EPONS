IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateVisitScore]')
DROP PROCEDURE [EPONS].[CreateVisitScore] 
GO

CREATE PROCEDURE [EPONS].[CreateVisitScore] 
@visitId UNIQUEIDENTIFIER,
@scoreId UNIQUEIDENTIFIER
AS

INSERT INTO [Visit].[ScoreValues]
(
[VisitId],
[ScoreValueId]
)
VALUES
(
@visitId,
@scoreId
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateVisitScore]', 'Executed'