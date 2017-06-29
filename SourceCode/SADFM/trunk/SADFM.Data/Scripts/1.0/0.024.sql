CREATE TABLE FunderAccountPermission(
	FunderAccountPermissionId uniqueidentifier not null,
	FunderId uniqueidentifier not null,
	AccountId uniqueidentifier not null,
	PermissionId uniqueidentifier not null);
ALTER TABLE FunderAccountPermission ADD CONSTRAINT [PK_FunderAccountPermission] PRIMARY KEY (FunderAccountPermissionId);
ALTER TABLE FunderAccountPermission ADD CONSTRAINT [DF_FunderAccountPermission_FunderAccountPermissionId] DEFAULT (newid()) FOR FunderAccountPermissionId;
ALTER TABLE FunderAccountPermission ADD CONSTRAINT [FK_FunderAccountPermission_Funder] FOREIGN KEY (FunderId) REFERENCES ListItem (ListItemId);
ALTER TABLE FunderAccountPermission ADD CONSTRAINT [FK_FunderAccountPermission_Account] FOREIGN KEY (AccountId) REFERENCES Account (AccountId);
ALTER TABLE FunderAccountPermission ADD CONSTRAINT [FK_FunderAccountPermission_Permission] FOREIGN KEY (PermissionId) REFERENCES ListItem (ListItemId);

