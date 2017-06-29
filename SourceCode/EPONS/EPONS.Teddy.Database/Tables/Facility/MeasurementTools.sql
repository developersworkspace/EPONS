IF OBJECT_ID('[Facility].[MeasurementTools]', 'U') IS NOT NULL 
  DROP TABLE [Facility].[MeasurementTools]; 

CREATE TABLE [Facility].[MeasurementTools](
	[FacilityId] UNIQUEIDENTIFIER NOT NULL,
	[MeasurementToolId] UNIQUEIDENTIFIER NOT NULL
)