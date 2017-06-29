IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindMeasurementToolsByPatientId]')
DROP PROCEDURE [EPONS].[FindMeasurementToolsByPatientId] 
GO

CREATE PROCEDURE [EPONS].[FindMeasurementToolsByPatientId] 
@patientId UNIQUEIDENTIFIER
AS
SELECT 
[measurementTool].[MeasurementToolId] AS [Id],
[measurementTool].[Name] AS [Name],
[frequency].[Name] AS [Frequency]
FROM [Patient].[MeasurementTools] AS [patientMeasurementTool]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [patientMeasurementTool].[MeasurementToolId]
AND
[patientMeasurementTool].[PatientId] = @patientId
AND 
[patientMeasurementTool].[DeassignedTimestamp] IS NULL
INNER JOIN [ValueObjects].[Frequencies] AS [frequency]
ON [frequency].[FrequencyId] = [patientMeasurementTool].[FrequencyId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindMeasurementToolsByPatientId]', 'Executed'
