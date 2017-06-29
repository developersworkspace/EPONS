IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateMeasurementToolScore]')
DROP PROCEDURE [EPONS].[CreateMeasurementToolScore] 
GO

CREATE PROCEDURE [EPONS].[CreateMeasurementToolScore] 
@userId UNIQUEIDENTIFIER,
@measurementToolId UNIQUEIDENTIFIER,
@score INT
AS

INSERT INTO [User].[MeasurementToolScores]
(
[UserId],
[MeasurementToolId],
[Score],
[Timestamp]
)
VALUES
(
@userId,
@measurementToolId,
@score,
GETDATE()
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateMeasurementToolScore]', 'Executed'