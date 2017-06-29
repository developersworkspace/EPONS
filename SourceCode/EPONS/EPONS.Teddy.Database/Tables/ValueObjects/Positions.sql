IF OBJECT_ID('[ValueObjects].[Positions]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Positions]; 
  
  CREATE TABLE [ValueObjects].[Positions] (
	[PositionId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)