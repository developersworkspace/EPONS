IF OBJECT_ID('[ValueObjects].[SupportServices]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[SupportServices]; 
  
  CREATE TABLE [ValueObjects].[SupportServices] (
	[SupportServiceId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)