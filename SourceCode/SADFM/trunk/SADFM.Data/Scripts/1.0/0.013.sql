ALTER TABLE Audit ADD ChangeTypeId uniqueidentifier NOT NULL;
ALTER TABLE Audit ADD CONSTRAINT FK_Audit_ChangeType FOREIGN KEY (ChangeTypeId) REFERENCES ListItem (ListItemId);