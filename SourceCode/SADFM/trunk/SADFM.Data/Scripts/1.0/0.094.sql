ALTER TABLE [Case] DROP CONSTRAINT FK_Case_Provider;
ALTER TABLE [Case] DROP COLUMN ProviderId;


CREATE TABLE [CaseProvider]
(
	CaseProviderId uniqueidentifier NOT NULL,
	CaseId uniqueidentifier NOT NULL,
	ProviderId uniqueidentifier NOT NULL,
    CreatedTimestamp DATETIME NOT NULL,
	AssignedTimestamp DATETIME NOT NULL,
	DischargeTimestamp DATETIME NULL,
	LastUpdatedAccountId uniqueidentifier NOT NULL,
	LastUpdatedTimestamp DATETIME NOT NULL
);


ALTER TABLE [CaseProvider] ADD CONSTRAINT [PK_CaseProvider] PRIMARY KEY (CaseProviderId);
ALTER TABLE [CaseProvider] ADD CONSTRAINT [DF_CaseProvider_CaseProviderId]  DEFAULT newid() FOR CaseProviderId;
ALTER TABLE [CaseProvider] ADD CONSTRAINT [FK_CaseProvider_Case] FOREIGN KEY (CaseId) REFERENCES [Case] (CaseId);
ALTER TABLE [CaseProvider] ADD CONSTRAINT [FK_CaseProvider_Provider] FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);

ALTER TABLE Provider ADD ProfileImage IMAGE NULL;