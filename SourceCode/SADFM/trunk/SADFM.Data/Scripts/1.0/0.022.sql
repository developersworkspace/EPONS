CREATE TABLE ProviderAccountPermission(
	ProviderAccountPermissionId uniqueidentifier not null,
	ProviderId uniqueidentifier not null,
	AccountId uniqueidentifier not null,
	PermissionId uniqueidentifier not null);
ALTER TABLE ProviderAccountPermission ADD CONSTRAINT [PK_ProviderAccountPermission] PRIMARY KEY (ProviderAccountPermissionId);
ALTER TABLE ProviderAccountPermission ADD CONSTRAINT [DF_ProviderAccountPermission_ProviderAccountPermissionId] DEFAULT (newid()) FOR ProviderAccountPermissionId;
ALTER TABLE ProviderAccountPermission ADD CONSTRAINT [FK_ProviderAccountPermission_Provider] FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);
ALTER TABLE ProviderAccountPermission ADD CONSTRAINT [FK_ProviderAccountPermission_Account] FOREIGN KEY (AccountId) REFERENCES Account (AccountId);
ALTER TABLE ProviderAccountPermission ADD CONSTRAINT [FK_ProviderAccountPermission_Permission] FOREIGN KEY (PermissionId) REFERENCES ListItem (ListItemId);

