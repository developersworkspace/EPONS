IF OBJECT_ID('[ValueObjects].[Provinces]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Provinces]; 
  
  CREATE TABLE [ValueObjects].[Provinces] (
	[ProvinceId] UNIQUEIDENTIFIER NOT NULL,
	[CountryId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)