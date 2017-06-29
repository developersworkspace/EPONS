ALTER TABLE [PatientScale] ADD [AccountId] uniqueidentifier
ALTER TABLE [PatientScale] ADD [ProviderId] uniqueidentifier

ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Account FOREIGN KEY (AccountId) REFERENCES Account (AccountId);
ALTER TABLE [PatientScale] ADD CONSTRAINT FK_PatientScale_Provider FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);