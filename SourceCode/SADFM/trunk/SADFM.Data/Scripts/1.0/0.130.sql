CREATE TABLE [PatientSupportService]
(
    PatientSupportServiceId uniqueidentifier NOT NULL,
	PatientId uniqueidentifier NOT NULL,
	SupportServiceId uniqueidentifier NOT NULL,
	Note varchar(255),
	LastUpdatedAccountId uniqueidentifier NOT NULL,
	LastUpdatedTimestamp DATETIME NOT NULL
);


ALTER TABLE [PatientSupportService] ADD CONSTRAINT [PK_PatientSupportService] PRIMARY KEY (PatientSupportServiceId);
ALTER TABLE [PatientSupportService] ADD CONSTRAINT [DF_PatientSupportService_PatientSupportServiced]  DEFAULT newid() FOR PatientSupportServiceId;
ALTER TABLE [PatientSupportService] ADD CONSTRAINT [FK_PatientSupportService_Patient] FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);
ALTER TABLE [PatientSupportService] ADD CONSTRAINT [FK_PatientSupportService_Provider] FOREIGN KEY (SupportServiceId) REFERENCES ListItem (ListItemId);
ALTER TABLE [PatientSupportService] ADD CONSTRAINT [FK_PatientSupportService_Account] FOREIGN KEY (LastUpdatedAccountId) REFERENCES Account (AccountId);