IF OBJECT_ID('[ValueObjects].[ScoreItems]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[ScoreItems]; 
  
  
CREATE TABLE [ValueObjects].[ScoreItems] (
	[ScoreItemId] UNIQUEIDENTIFIER NOT NULL,
	[ParentScoreItemId] UNIQUEIDENTIFIER NULL,
	[MeasurementToolId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256) NOT NULL,
	[SortOrder] INT NOT NULL,
	[Value] INT NOT NULL
)