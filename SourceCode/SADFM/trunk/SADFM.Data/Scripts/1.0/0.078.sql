CREATE TABLE AccountRole
(
	AccountRoleId uniqueidentifier NOT NULL,
	AccountId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier NOT NULL
);


ALTER TABLE [AccountRole] ADD CONSTRAINT [PK_AccountRole] PRIMARY KEY (AccountRoleId);
ALTER TABLE [AccountRole] ADD CONSTRAINT [DF_AccountRole_AccountRoleId]  DEFAULT newid() FOR AccountRoleId;
ALTER TABLE [AccountRole] ADD CONSTRAINT [FK_AccountRole_Account] FOREIGN KEY (AccountId) REFERENCES Account (AccountId);
ALTER TABLE [AccountRole] ADD CONSTRAINT [FK_AccountRole_ListItem] FOREIGN KEY (RoleId) REFERENCES ListItem (ListItemId);