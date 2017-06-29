IF OBJECT_ID('[ValueObjects].[Permissions]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[Permissions]; 
  
  
CREATE TABLE [ValueObjects].[Permissions] (
	[PermissionId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)