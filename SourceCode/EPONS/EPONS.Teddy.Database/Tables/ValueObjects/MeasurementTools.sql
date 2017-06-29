IF OBJECT_ID('[ValueObjects].[MeasurementTools]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[MeasurementTools]; 
  
CREATE TABLE [ValueObjects].[MeasurementTools] (
	[MeasurementToolId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256) NOT NULL
)