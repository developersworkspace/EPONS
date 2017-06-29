IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateFacilityMeasurementTool]')
DROP PROCEDURE [EPONS].[CreateFacilityMeasurementTool] 
GO

CREATE PROCEDURE [EPONS].[CreateFacilityMeasurementTool] 
@facilityId UNIQUEIDENTIFIER,
@measurementToolId UNIQUEIDENTIFIER
AS

INSERT INTO [Facility].[MeasurementTools]
           ([FacilityId]
           ,[MeasurementToolId])
     VALUES
           (@facilityId
           ,@measurementToolId)

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateFacilityMeasurementTool]', 'Executed'

