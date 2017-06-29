IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindMeasurementToolsByFacilityId]')
DROP PROCEDURE [EPONS].[FindMeasurementToolsByFacilityId] 
GO

CREATE PROCEDURE [EPONS].[FindMeasurementToolsByFacilityId] 
@facilityId UNIQUEIDENTIFIER
AS
SELECT 
	[facilityMeasurementTool].[MeasurementToolId] AS [Id],
	[measurementTool].[Name] AS [Name]
  FROM [Facility].[MeasurementTools] AS [facilityMeasurementTool]
  INNER JOIN [ValueObjects].[MeasurementTools] AS [measurementTool]
  ON [measurementTool].[MeasurementToolId] = [facilityMeasurementTool].[MeasurementToolId]
  AND [facilityMeasurementTool].[FacilityId] = @facilityId

  EXEC [Audit].[CreateLogEntry] '[EPONS].[FindMeasurementToolsByFacilityId]', 'Executed'