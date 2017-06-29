IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[DeassignMeasurementTool]')
DROP PROCEDURE [EPONS].[DeassignMeasurementTool] 
GO

CREATE PROCEDURE [EPONS].[DeassignMeasurementTool] 
@patientId UNIQUEIDENTIFIER,
@measurementToolId UNIQUEIDENTIFIER
AS


UPDATE [Patient].[MeasurementTools] 
SET [DeassignedTimestamp] = GETDATE() 
WHERE [MeasurementToolId] = @measurementToolId AND [DeassignedTimestamp] IS NULL AND [PatientId] = @patientId

EXEC [Audit].[CreateLogEntry] '[EPONS].[DeassignMeasurementTool]', 'Executed'
