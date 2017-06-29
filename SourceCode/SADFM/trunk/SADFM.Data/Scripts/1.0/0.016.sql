CREATE TABLE Provider (
	ProviderId uniqueidentifier not null,
	[Name] nvarchar(255) not null,
	IsGroup bit not null,
	AcuityTypeId uniqueidentifier,
	ParentId uniqueidentifier,
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null);
ALTER TABLE [Provider] ADD CONSTRAINT [DF_Provider_ProviderId] DEFAULT newid() FOR ProviderId;
ALTER TABLE [Provider] ADD CONSTRAINT [PK_Provider] PRIMARY KEY (ProviderId);
ALTER TABLE Provider ADD CONSTRAINT FK_Provider_AcuityType FOREIGN KEY (AcuityTypeId) REFERENCES ListItem (ListItemId);
ALTER TABLE Provider ADD CONSTRAINT FK_Provider_Parent FOREIGN KEY (ParentId) REFERENCES Provider (ProviderId);
ALTER TABLE Provider ADD CONSTRAINT FK_Provider_Account FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);

CREATE TABLE ProviderUnit (
	ProviderId uniqueidentifier not null,
	UnitId uniqueidentifier not null);
ALTER TABLE ProviderUnit ADD CONSTRAINT [PK_ProviderUnit] PRIMARY KEY (ProviderId, UnitId);
ALTER TABLE ProviderUnit ADD CONSTRAINT [FK_ProviderUnit_Provider] FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);
ALTER TABLE ProviderUnit ADD CONSTRAINT [FK_ProviderUnit_Unit] FOREIGN KEY (UnitId) REFERENCES ListItem (ListItemId);