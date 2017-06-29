CREATE TABLE [PatientScale] (
	PatientScaleId uniqueidentifier NOT NULL,
	PatientId uniqueidentifier NOT NULL,
	ScaleId uniqueidentifier NOT NULL,
	FrequencyId uniqueidentifier NOT NULL
	);



ALTER TABLE [PatientScale] ADD CONSTRAINT PK_PatientScale PRIMARY KEY ([PatientScaleId]);
ALTER TABLE [PatientScale] ADD CONSTRAINT DF_PatientScale_PatientScaleId DEFAULT (newid()) FOR PatientScaleId;
ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Patient FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Scale FOREIGN KEY (ScaleId) REFERENCES ListItem (ListItemId);
ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Frequency FOREIGN KEY (FrequencyId) REFERENCES ListItem (ListItemId);