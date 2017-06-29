ALTER TABLE [Case] ADD [ImpairmentGroupId] uniqueidentifier;
ALTER TABLE [Case] ADD CONSTRAINT [FK_ImpairmentGroup_ListItem] FOREIGN KEY (ImpairmentGroupId) REFERENCES ListItem (ListItemId);