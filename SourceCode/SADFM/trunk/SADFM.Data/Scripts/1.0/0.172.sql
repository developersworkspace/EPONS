ALTER TABLE [PatientProvider] ADD [ReasonForAdmissionId] UNIQUEIDENTIFIER NULL;
ALTER TABLE [PatientProvider] ADD [ICD10CodeTimestamp] DATETIME NULL;
ALTER TABLE [PatientProvider] ADD CONSTRAINT FK_ReasonForAdmission FOREIGN KEY (ReasonForAdmissionId) REFERENCES [ListItem] (ListItemId);