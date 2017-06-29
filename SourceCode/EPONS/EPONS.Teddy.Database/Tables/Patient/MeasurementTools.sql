IF OBJECT_ID('[Patient].[MeasurementTools]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[MeasurementTools]; 

CREATE TABLE [Patient].[MeasurementTools] (
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[MeasurementToolId] UNIQUEIDENTIFIER NOT NULL,
	[FrequencyId] UNIQUEIDENTIFIER NOT NULL,
	[AssignedTimestamp] DATETIME NOT NULL,
	[DeassignedTimestamp] DATETIME NULL
)

