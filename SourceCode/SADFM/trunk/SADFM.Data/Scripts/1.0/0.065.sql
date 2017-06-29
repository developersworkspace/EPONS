CREATE TABLE ProviderServiceType (
	ProviderServiceTypeId uniqueidentifier not null,
	ProviderId uniqueidentifier not null,
	ServiceTypeId uniqueidentifier not null,
	ContactNumber varchar(25),
	Street nvarchar(100),
	City nvarchar(100),
	Province nvarchar(100),
	PostalCode varchar(20),
	CountryId uniqueidentifier,
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null);

CREATE TABLE ProviderServiceTypeScale (
	ProviderServiceTypeScaleId uniqueidentifier not null,
	ProviderServiceTypeId uniqueidentifier not null,
	ScaleId uniqueidentifier not null);

ALTER TABLE ProviderServiceType ADD CONSTRAINT [PK_ProviderServiceType] PRIMARY KEY (ProviderServiceTypeId);
ALTER TABLE ProviderServiceType ADD CONSTRAINT [DF_ProviderServiceType_ProviderServiceTypeId] DEFAULT (newid()) FOR ProviderServiceTypeId;
ALTER TABLE ProviderServiceType ADD CONSTRAINT [FK_ProviderServiceType_Provider] FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);
ALTER TABLE ProviderServiceType ADD CONSTRAINT [FK_ProviderServiceType_ServiceType] FOREIGN KEY (ServiceTypeId) REFERENCES ListItem (ListItemId);
ALTER TABLE ProviderServiceType ADD CONSTRAINT [FK_ProviderServiceType_Country] FOREIGN KEY (CountryId) REFERENCES ListItem (ListItemId);
ALTER TABLE ProviderServiceType ADD CONSTRAINT [FK_LastUpdateAccountId] FOREIGN KEY (LastUpdateAccountId) REFERENCES Account (AccountId);

ALTER TABLE ProviderServiceTypeScale ADD CONSTRAINT [PK_ProviderServiceTypeScale] PRIMARY KEY (ProviderServiceTypeScaleId);
ALTER TABLE ProviderServiceTypeScale ADD CONSTRAINT [DF_ProviderServiceTypeScale_ProviderServiceTypeScaleId] DEFAULT (newid()) FOR ProviderServiceTypeScaleId;
ALTER TABLE ProviderServiceTypeScale ADD CONSTRAINT [FK_ProviderServiceTypeScale_ProviderServiceType] FOREIGN KEY (ProviderServiceTypeId) REFERENCES ProviderServiceType (ProviderServiceTypeId);
ALTER TABLE ProviderServiceTypeScale ADD CONSTRAINT [FK_ProviderServiceTypeScale_Scale] FOREIGN KEY (ScaleId) REFERENCES ListItem (ListItemId);