IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[DeleteFacilityMeasurementTool]')
DROP PROCEDURE [EPONS].[DeleteFacilityMeasurementTool] 
GO

CREATE PROCEDURE [EPONS].[DeleteFacilityMeasurementTool] 
@facilityId UNIQUEIDENTIFIER,
@measurementToolId UNIQUEIDENTIFIER
AS
DELETE 
  FROM [Facility].[MeasurementTools]
  WHERE [FacilityId] = @facilityId AND [MeasurementToolId] = @measurementToolId

EXEC [Audit].[CreateLogEntry] '[EPONS].[DeleteFacilityMeasurementTool]', 'Executed'