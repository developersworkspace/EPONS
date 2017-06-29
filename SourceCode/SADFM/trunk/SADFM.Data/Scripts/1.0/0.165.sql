ALTER TABLE [CaseProvider] ALTER COLUMN [CaseId] uniqueidentifier NULL;

CREATE TABLE [PatientProvider] (
	PatientProviderId uniqueidentifier NOT NULL,
	PatientId uniqueidentifier NOT NULL,
	ProviderId uniqueidentifier NOT NULL,
	CaseId uniqueidentifier NULL,
	AccountId uniqueidentifier NOT NULL,
	CreatedTimestamp DATETIME NOT NULL,
	AssignedTimestamp DATETIME NOT NULL,
	DischargeTimestamp DATETIME NULL,
	LastUpdateTimestamp datetime NOT NULL,
	LastUpdateAccountId uniqueidentifier NOT NULL);

ALTER TABLE [PatientProvider] ADD CONSTRAINT PK_PatientProvider PRIMARY KEY (PatientProviderId);
ALTER TABLE [PatientProvider] ADD CONSTRAINT DF_PatientProvider_PatientProviderId DEFAULT NEWID() FOR PatientProviderId;
ALTER TABLE [PatientProvider] ADD CONSTRAINT FK_PatientProvider_Patient FOREIGN KEY (PatientId) REFERENCES [Patient] (PatientId);
ALTER TABLE [PatientProvider] ADD CONSTRAINT FK_PatientProvider_Provider FOREIGN KEY (ProviderId) REFERENCES [Provider] (ProviderId);
ALTER TABLE [PatientProvider] ADD CONSTRAINT FK_PatientProvider_Case FOREIGN KEY (CaseId) REFERENCES [Case] (CaseId);
ALTER TABLE [PatientProvider] ADD CONSTRAINT FK_PatientProvider_Account FOREIGN KEY (AccountId) REFERENCES [Account] (AccountId);
