IF OBJECT_ID('[ValueObjects].[Races]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Races]; 
  
  CREATE TABLE [ValueObjects].[Races] (
	[RaceId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)