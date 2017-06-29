IF OBJECT_ID('[ValueObjects].[ResidentialEnvironments]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[ResidentialEnvironments]; 
  
  CREATE TABLE [ValueObjects].[ResidentialEnvironments] (
	[ResidentialEnvironmentId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)