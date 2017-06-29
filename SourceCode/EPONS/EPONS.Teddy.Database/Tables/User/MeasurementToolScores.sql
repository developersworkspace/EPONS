IF OBJECT_ID('[User].[MeasurementToolScores]', 'U') IS NOT NULL 
  DROP TABLE [User].[MeasurementToolScores]; 

CREATE TABLE [User].[MeasurementToolScores] (
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[MeasurementToolId] UNIQUEIDENTIFIER NOT NULL,
	[Score] FLOAT NOT NULL,
	[Timestamp] DATE NOT NULL
)