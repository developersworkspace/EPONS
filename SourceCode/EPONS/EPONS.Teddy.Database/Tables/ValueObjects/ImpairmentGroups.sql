IF OBJECT_ID('[ValueObjects].[ImpairmentGroups]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[ImpairmentGroups]; 
  
  CREATE TABLE [ValueObjects].[ImpairmentGroups] (
	[ImpairmentGroupId] UNIQUEIDENTIFIER NOT NULL,
	[Code] VARCHAR(16),
	[Name] VARCHAR(256),
	[SortOrder] INT NOT NULL
)