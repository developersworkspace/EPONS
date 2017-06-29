IF OBJECT_ID('[ValueObjects].[Titles]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Titles]; 
  
  CREATE TABLE [ValueObjects].[Titles] (
	[TitleId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)