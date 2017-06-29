ALTER TABLE [PatientScale] ADD [StatusId] uniqueidentifier
ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Status FOREIGN KEY (StatusId) REFERENCES ListItem (ListItemId);

ALTER TABLE [PatientScale] ADD [CreatedTimestamp] DATE NOT NULL DEFAULT GETDATE()