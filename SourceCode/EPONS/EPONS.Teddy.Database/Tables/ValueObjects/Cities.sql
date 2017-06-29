IF OBJECT_ID('[ValueObjects].[Cities]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Cities]; 
  
CREATE TABLE [ValueObjects].[Cities] (
	[CityId] UNIQUEIDENTIFIER NOT NULL,
	[ProvinceId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)