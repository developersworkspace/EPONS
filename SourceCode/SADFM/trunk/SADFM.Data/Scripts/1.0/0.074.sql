CREATE TABLE ScalePermission
(
	ScalePermissionsId uniqueidentifier NOT NULL DEFAULT newid(),
	AccountId uniqueidentifier NOT NULL,
	ScaleId uniqueidentifier NOT NULL,
	DateCreatedTimestamp datetime not null,
	LastUpdateTimestamp datetime not null,
	LastUpdateAccountId uniqueidentifier not null
);