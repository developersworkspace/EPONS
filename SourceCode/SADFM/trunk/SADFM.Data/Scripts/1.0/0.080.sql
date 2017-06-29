ALTER TABLE [AccountRole] DROP CONSTRAINT [FK_AccountRole_ListItem];
ALTER TABLE [AccountRole] ADD CONSTRAINT [FK_AccountRole_Role] FOREIGN KEY (RoleId) REFERENCES ListItem (ListItemId);
