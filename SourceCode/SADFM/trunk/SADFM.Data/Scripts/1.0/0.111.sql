ALTER TABLE ProviderServiceType DROP COLUMN Province, City;
ALTER TABLE ProviderServiceType ADD ProvinceId uniqueidentifier, CityId uniqueidentifier;
ALTER TABLE ProviderServiceType ADD CONSTRAINT FK_ProviderServiceType_Province FOREIGN KEY (ProvinceId) REFERENCES ListItem (ListItemId);
ALTER TABLE ProviderServiceType ADD CONSTRAINT FK_ProviderServiceType_City FOREIGN KEY (CityId) REFERENCES ListItem (ListItemId);
