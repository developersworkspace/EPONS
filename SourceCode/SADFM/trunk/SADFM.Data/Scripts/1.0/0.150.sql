CREATE TABLE [ScaleItemHeader] (
	ScaleItemHeaderId uniqueidentifier NOT NULL,
	ScaleItemId uniqueidentifier NOT NULL,
	Name varchar(255) NOT NULL
	);



ALTER TABLE [ScaleItemHeader] ADD CONSTRAINT PK_ScaleItemHeader PRIMARY KEY (ScaleItemHeaderId);

ALTER TABLE [ScaleItemHeader] ADD CONSTRAINT DF_ScaleItemHeader_ScaleItemHeaderId DEFAULT (newid()) FOR ScaleItemHeaderId;
ALTER TABLE [ScaleItemHeader] ADD CONSTRAINT FK_ScaleItemHeader_ScaleItem FOREIGN KEY (ScaleItemId) REFERENCES [ListItem] (ListItemId);