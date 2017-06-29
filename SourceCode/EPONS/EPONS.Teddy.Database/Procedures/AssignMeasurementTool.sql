IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[AssignMeasurementTool]')
DROP PROCEDURE [EPONS].[AssignMeasurementTool] 
GO

CREATE PROCEDURE [EPONS].[AssignMeasurementTool] 
@patientId UNIQUEIDENTIFIER,
@measurementToolId UNIQUEIDENTIFIER,
@frequencyId UNIQUEIDENTIFIER,
@timestamp DATETIME
AS

INSERT INTO [Patient].[MeasurementTools] ([PatientId], [MeasurementToolId], [FrequencyId], [AssignedTimestamp])
VALUES (@patientId, @measurementToolId, @frequencyId, @timestamp)

EXEC [Audit].[CreateLogEntry] '[EPONS].[AssignMeasurementTool]', 'Executed'