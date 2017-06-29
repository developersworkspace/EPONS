CREATE TABLE [FunderScheme]
(
    FunderSchemeId uniqueidentifier NOT NULL,
	FunderId uniqueidentifier NOT NULL,
	SchemeId uniqueidentifier NOT NULL,
);


ALTER TABLE [FunderScheme] ADD CONSTRAINT [PK_FunderScheme] PRIMARY KEY (FunderSchemeId);
ALTER TABLE [FunderScheme] ADD CONSTRAINT [DF_FunderScheme]  DEFAULT newid() FOR FunderSchemeId;
ALTER TABLE [FunderScheme] ADD CONSTRAINT [FK_Funder] FOREIGN KEY (FunderId) REFERENCES ListItem (ListItemId);
ALTER TABLE [FunderScheme] ADD CONSTRAINT [FK_Scheme] FOREIGN KEY (SchemeId) REFERENCES ListItem (ListItemId);