ALTER TABLE [Patient]
DROP COLUMN [Province];


ALTER TABLE [Patient]
ADD ProvinceId uniqueidentifier;

ALTER TABLE [Patient] ADD CONSTRAINT [FK_Province_ListItem] FOREIGN KEY (ProvinceId) REFERENCES ListItem (ListItemId);


ALTER TABLE [Patient]
DROP COLUMN [City];


ALTER TABLE [Patient]
ADD CityId uniqueidentifier;

ALTER TABLE [Patient] ADD CONSTRAINT [FK_City_ListItem] FOREIGN KEY (CityId) REFERENCES ListItem (ListItemId);