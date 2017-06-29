IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindMeasurementToolsByPatientIdAndDateRange]')
DROP PROCEDURE [EPONS].[FindMeasurementToolsByPatientIdAndDateRange] 
GO

CREATE PROCEDURE [EPONS].[FindMeasurementToolsByPatientIdAndDateRange] 
@patientId UNIQUEIDENTIFIER,
@startDate DATE,
@endDate DATE
AS
SELECT 
[measurementTool].[MeasurementToolId] AS [Id],
[measurementTool].[Name] AS [Name],
[frequency].[Name] AS [Frequency],
[patientMeasurementTool].[AssignedTimestamp] AS [StartDate],
[patientMeasurementTool].[DeassignedTimestamp] AS [EndDate]
FROM [Patient].[MeasurementTools] AS [patientMeasurementTool]
INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
ON [measurementTool].[MeasurementToolId] = [patientMeasurementTool].[MeasurementToolId]
AND
[patientMeasurementTool].[PatientId] = @patientId
INNER JOIN [ValueObjects].[Frequencies] AS [frequency]
ON [frequency].[FrequencyId] = [patientMeasurementTool].[FrequencyId]
WHERE
(CONVERT(DATE, [patientMeasurementTool].[AssignedTimestamp]) <= @endDate) and (@startDate <= CONVERT(DATE, COALESCE([patientMeasurementTool].[DeassignedTimestamp], GETDATE())))

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindMeasurementToolsByPatientIdAndDateRange]', 'Executed'