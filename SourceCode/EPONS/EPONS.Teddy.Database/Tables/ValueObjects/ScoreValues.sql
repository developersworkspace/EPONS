IF OBJECT_ID('[ValueObjects].[ScoreValues]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[ScoreValues]; 
  
  
CREATE TABLE [ValueObjects].[ScoreValues] (
	[ScoreValueId] UNIQUEIDENTIFIER NOT NULL,
	[ScoreItemId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256) NOT NULL,
	[SortOrder] INT NOT NULL,
	[Value] INT NOT NULL
)