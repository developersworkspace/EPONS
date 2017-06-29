IF OBJECT_ID('[ValueObjects].[Frequencies]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Frequencies]; 
  
  CREATE TABLE [ValueObjects].[Frequencies] (
	[FrequencyId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)