IF OBJECT_ID('[ValueObjects].[Genders]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Genders]; 
  
  CREATE TABLE [ValueObjects].[Genders] (
	[GenderId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)