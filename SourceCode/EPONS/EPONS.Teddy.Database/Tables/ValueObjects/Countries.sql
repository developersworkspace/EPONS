IF OBJECT_ID('[ValueObjects].[Countries]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Countries]; 
  
  CREATE TABLE [ValueObjects].[Countries] (
	[CountryId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)