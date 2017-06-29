IF OBJECT_ID('[User].[Permissions]', 'U') IS NOT NULL 
  DROP TABLE [User].[Permissions]; 
  
CREATE TABLE [User].[Permissions] (
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[FacilityId] UNIQUEIDENTIFIER NOT NULL,
	[PermissionId] UNIQUEIDENTIFIER NOT NULL
)
