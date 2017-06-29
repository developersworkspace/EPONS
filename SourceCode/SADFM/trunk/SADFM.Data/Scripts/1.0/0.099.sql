DECLARE
 @provinceid uniqueidentifier,
 @countryid uniqueidentifier,
 @activeid uniqueidentifier,
 @lastupdateaccountid uniqueidentifier

SELECT TOP 1 @lastupdateaccountid = AccountId FROM Account ORDER BY DateCreatedTimestamp

SELECT @countryid = li_SouthAfrica.ListItemId, @activeid = li_Active.ListItemId
FROM [ListItem] as li_Country 
  INNER JOIN [ListItem] as li_SouthAfrica ON (li_Country.Name = 'Country' AND li_SouthAfrica.ParentId = li_Country.ListItemId AND li_SouthAfrica.Name = 'SouthAfrica')
  INNER JOIN [ListItem] as li_Status ON (li_Status.Name = 'Status')
  INNER JOIN [ListItem] as li_Active ON (li_Active.ParentId = li_Status.ListItemId AND li_Active.Name = 'Active')


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'KwaZulu-Natal','KwaZulu-Natal', @activeid, @lastupdateaccountid, GETDATE()); SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'KwaZulu-Natal';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grantham Park','Grantham Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grantleigh','Grantleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greenhill','Greenhill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greenwood Park','Greenwood Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greystorie','Greystorie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greytown','Greytown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greyville','Greyville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groenkloof','Groenkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groenvlei','Groenvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootkloof','Grootkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grosvenor','Grosvenor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groutville','Groutville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Guleka','Guleka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Guliga','Guliga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gunjana','Gunjana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gusenzamo','Gusenzamo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hamewith','Hamewith', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hammarsdale','Hammarsdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hammersdale','Hammersdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hansonia','Hansonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harburg','Harburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harden Heights','Harden Heights', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harding','Harding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harrison','Harrison', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartlea','Hartlea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hattingspruit','Hattingspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hay Paddock','Hay Paddock', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hazeldene','Hazeldene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heatonville','Heatonville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hela Hela','Hela Hela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zamokwake','Zamokwake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zeekogat','Zeekogat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zihlakenpele','Zihlakenpele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zingolweni','Zingolweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zondela','Zondela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zotsha','Zotsha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zuinguin','Zuinguin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zuma','Zuma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zunckels','Zunckels', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zungwini','Zungwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartberg','Zwartberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartmodderfontein','Zwartmodderfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stafford''s Post','Stafford''s Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stanger','Stanger', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stanger Station','Stanger Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steadmore','Steadmore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steilrand','Steilrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stendal','Stendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ston','Ston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strathmore Park','Strathmore Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strathroy','Strathroy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strydberg Post','Strydberg Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strydfontein','Strydfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stylrand','Stylrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suits Me','Suits Me', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sundrift','Sundrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sundumbili','Sundumbili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunkelsdrif','Sunkelsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunkels Drift','Sunkels Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunnyside','Sunnyside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sun Valley Farm','Sun Valley Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunwich Port','Sunwich Port', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Surats Store','Surats Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Surats','Surats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Surreyvale','Surreyvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sutherland','Sutherland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartberg','Swartberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swarthoogte','Swarthoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sweetwaters','Sweetwaters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sweet Waters','Sweet Waters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swelela','Swelela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sydenham','Sydenham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tabamhlope','Tabamhlope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tafamasi','Tafamasi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Talavera','Talavera', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Taleni','Taleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tandanani','Tandanani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Taylors','Taylors', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tefgte','Tefgte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Telgte','Telgte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Teza','Teza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thandisizwe','Thandisizwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Cedars','The Cedars', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Grove','The Grove', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Hill','The Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thelizolo','Thelizolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thembalihle','Thembalihle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thembeni','Thembeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thendele','Thendele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Point','The Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Ranch','The Ranch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Rest','The Rest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Ridge','The Ridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Rockeries','The Rockeries', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Village','The Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tholeni','Tholeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thombothi','Thombothi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thonsini','Thonsini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thorndale','Thorndale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thornham','Thornham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thornville Junction','Thornville Junction', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thornville','Thornville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thornwood','Thornwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thrings Post','Thrings Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thurlough','Thurlough', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tinley Manor Estate','Tinley Manor Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tinley Manor','Tinley Manor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tongaat','Tongaat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tongaat Village','Tongaat Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tonjeni','Tonjeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trado','Trado', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trafalgar','Trafalgar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Treasure Beach','Treasure Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trewirgie','Trewirgie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshongwe','Tshongwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Beach','Tugela Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Estates','Tugela Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Ferry','Tugela Ferry', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Location','Tugela Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Mouth','Tugela Mouth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela Store','Tugela Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tugela','Tugela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Turton','Turton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Twin Streams','Twin Streams', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ubambulos','Ubambulos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ubango','Ubango', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ubombo','Ubombo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uithoek','Uithoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitsien','Uitsien', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitval','Uitval', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitzicht','Uitzicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitzien','Uitzien', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ulundi','Ulundi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umbilo','Umbilo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umbogintwini','Umbogintwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umbumbulu','Umbumbulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umdhloti Beach','Umdhloti Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umdloti Beach','Umdloti Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umdloti','Umdloti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umfolosi','Umfolosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umfolozi','Umfolozi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umgeni Dam','Umgeni Dam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'uMhali','uMhali', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umhalnga Rocks','Umhalnga Rocks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umhlanga Rocks','Umhlanga Rocks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umhlatuzi Valley','Umhlatuzi Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umhloti Beach','Umhloti Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umkhomazi','Umkhomazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'uMkhumbikazana','uMkhumbikazana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umkomaas','Umkomaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umkomanzi','Umkomanzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umlaasweg','Umlaasweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umlalazi','Umlalazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umlazi','Umlazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umpumulo','Umpumulo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umsinsini','Umsinsini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umtentweni Railway Station','Umtentweni Railway Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umtentweni','Umtentweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umtwalumi','Umtwalumi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umvoti Location','Umvoti Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umvoti Lokasie','Umvoti Lokasie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umvoti Mouth','Umvoti Mouth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umvoti','Umvoti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umyozene','Umyozene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umzimbete','Umzimbete', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umzimbethe','Umzimbethe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umzinto','Umzinto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Umzumbe','Umzumbe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Underberg','Underberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Untunjambili','Untunjambili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upathe Mission','Upathe Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upati','Upati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upepeni','Upepeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upper Tongaat','Upper Tongaat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Utrecht','Utrecht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uvongo Beach','Uvongo Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uvongostrand','Uvongostrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uvongo','Uvongo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalbank','Vaalbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalkop','Vaalkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Rooyen','Van Rooyen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Tonders Pass','Van Tonders Pass', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vant''s Drift','Vant''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vantsdrif','Vantsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Veldenvlei','Veldenvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verdriet','Verdriet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vergelee','Vergelee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verulam','Verulam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Victoria Sugar Estates','Victoria Sugar Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Victoria','Victoria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Village of Happiness','Village of Happiness', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Villa Maria','Villa Maria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakfontein','Vlakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlaklaagte','Vlaklaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vongonzana','Vongonzana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vryheid East','Vryheid East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vryheid-Oos','Vryheid-Oos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vryheid','Vryheid', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vulamahlo','Vulamahlo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vulandondo','Vulandondo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vumankala','Vumankala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vuna','Vuna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waay Hoek','Waay Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waldheim','Waldheim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Warmbaths','Warmbaths', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Warner Beach','Warner Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wartburg','Wartburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wartmodder','Wartmodder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wasbank','Wasbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waschbank','Waschbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterfall','Waterfall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Water Fall','Water Fall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Watersmeet','Watersmeet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Watersmee','Watersmee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterval','Waterval', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waverley','Waverley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khiphunyawo','Khiphunyawo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kildare','Kildare', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kilegethe','Kilegethe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingsborough','Kingsborough', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingsburgh','Kingsburgh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingscote','Kingscote', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingsley','Kingsley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingsmead','Kingsmead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kings Rest','Kings Rest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingston','Kingston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kings View','Kings View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klingenberg','Klingenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klip River Location','Klip River Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliprivier','Kliprivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliprivierlokasie','Kliprivierlokasie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipspruit','Klipspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klonge','Klonge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kloof','Kloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kokstad','Kokstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Komankobolo','Komankobolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koningskroon','Koningskroon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Korhaan Hill','Korhaan Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kortbegrip','Kortbegrip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kosi','Kosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kosi Store','Kosi Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kranskop','Kranskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krantzkop','Krantzkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kromberg','Kromberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krommedraai','Krommedraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kromvlei','Kromvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruisfontein','Kruisfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuleka','Kuleka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuludake','Kuludake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kunen','Kunen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kunyana','Kunyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuzameni','Kuzameni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuze','Kuze', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaBhidla','KwaBhidla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaCebelele','KwaCebelele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaCele','KwaCele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaCeza','KwaCeza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDabeka','KwaDabeka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDinabanye','KwaDinabanye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDlamini','KwaDlamini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDonsa','KwaDonsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDulela','KwaDulela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDuma','KwaDuma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDweshula','KwaDweshula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaGamalakhe','KwaGamalakhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaGcwensa','KwaGcwensa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaGengeshe','KwaGengeshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaGqugouma','KwaGqugouma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weathercote','Weathercote', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weenen','Weenen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welgevonden','Welgevonden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welkom','Welkom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wembesi','Wembesi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wentworth','Wentworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westbrook','Westbrook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weston','Weston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westridge','Westridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westville','Westville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wewe','Wewe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weza','Weza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Widenham','Widenham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilderness','Wilderness', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Willowgrange','Willowgrange', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wincanton','Wincanton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windside','Windside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windy Hill','Windy Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windy','Windy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winkelspruit','Winkelspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winklespruit','Winklespruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winston Park','Winston Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winters','Winters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winterton','Winterton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witvoloos','Witvoloos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolwefontein','Wolwefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodlands','Woodlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodleigh','Woodleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodley','Woodley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodloy','Woodloy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wycliffe','Wycliffe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Xamini','Xamini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Xosheyakhe','Xosheyakhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Yarrow','Yarrow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Yengweni','Yengweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'York','York', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Opati Mission','Opati Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Opati','Opati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ophansi','Ophansi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ophondweni','Ophondweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Opondweni','Opondweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oqhumu','Oqhumu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Osizweni','Osizweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oslo Beach','Oslo Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Otimati','Otimati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottawa','Ottawa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Otterburn','Otterburn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ouderdom','Ouderdom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Overdene Estate','Overdene Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Overport','Overport', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oyemani','Oyemani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oyemeni','Oyemeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ozwatini','Ozwatini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paddafontein','Paddafontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paddock','Paddock', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Painsacre','Painsacre', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pampa','Pampa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Panorama','Panorama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Park Rynie','Park Rynie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paspalum','Paspalum', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pateni','Pateni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Patwa''s','Patwa''s', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paulpietersburg','Paulpietersburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Peace Town','Peace Town', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pelham','Pelham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pelindaba','Pelindaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pelindaba Store','Pelindaba Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pension Farm','Pension Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pevensey Place','Pevensey Place', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phapheni','Phapheni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phelandaba','Phelandaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phoenix Hill','Phoenix Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phoenix Park','Phoenix Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phoenix','Phoenix', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pholela','Pholela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piensrand','Piensrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pietermaritsburg','Pietermaritsburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pietermaritzburg','Pietermaritzburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pine Cleugh','Pine Cleugh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pinelands','Pinelands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pinetown','Pinetown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pisgah','Pisgah', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plessislaer','Plessislaer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Point','Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Polela','Polela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Police Post','Police Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pomeroy','Pomeroy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pongola','Pongola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaHlomendlini','KwaHlomendlini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaIllophe','KwaIllophe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaJobe','KwaJobe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaJozana','KwaJozana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMaci','KwaMaci', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMadlala','KwaMadlala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMagaza','KwaMagaza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMagoda','KwaMagoda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMagubane','KwaMagubane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMagwaza','KwaMagwaza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwamagwaza Mission Station','Kwamagwaza Mission Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMahlati','KwaMahlati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMakhutha','KwaMakhutha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMandlakazi','KwaMandlakazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMankonjane','KwaMankonjane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMapeyana','KwaMapeyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMaqikizana','KwaMaqikizana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMaqokomela','KwaMaqokomela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMashu','KwaMashu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMateni','KwaMateni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMawanda','KwaMawanda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMbonambi','KwaMbonambi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMbonia','KwaMbonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMboto','KwaMboto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMgwagwa','KwaMgwagwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMjiji','KwaMjiji', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMkhiza','KwaMkhiza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMkhize','KwaMkhize', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMlamula','KwaMlamula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMlimisi','KwaMlimisi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMntoqotho','KwaMntoqotho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMnyaisa','KwaMnyaisa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMphephethwa','KwaMphephethwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMpumuza','KwaMpumuza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMshaya','KwaMshaya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMshiwa','KwaMshiwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMthole','KwaMthole', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMwema','KwaMwema', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNdaba','KwaNdaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNdengezi','KwaNdengezi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNdlangubo','KwaNdlangubo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNdlangubu','KwaNdlangubu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Ndlangybo','Kwa-Ndlangybo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNdlovu','KwaNdlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNgcolosi','KwaNgcolosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNgendezi','KwaNgendezi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNgongoma','KwaNgongoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNguza','KwaNguza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNibela','KwaNibela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNkunswana','KwaNkunswana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNobhena','KwaNobhena', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNompondo','KwaNompondo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNonhlanga','KwaNonhlanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNonjinjikazi','KwaNonjinjikazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwanyana','Kwanyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNyuswa','KwaNyuswa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNzimakwe','KwaNzimakwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaPheshe','KwaPheshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaQiko','KwaQiko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaRwayi','KwaRwayi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaSandanezwe','KwaSandanezwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaSanti','KwaSanti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaShiya','KwaShiya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaSonto','KwaSonto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaThunzi','KwaThunzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aboretum','Aboretum', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aboyne','Aboyne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Acme','Acme', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Acton Homes','Acton Homes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Adams College','Adams College', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Adams Mission','Adams Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Adams Mission Station','Adams Mission Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Adams M.S.','Adams M.S.', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Addington','Addington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Agatha','Agatha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ahrens','Ahrens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albert','Albert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albert Falls','Albert Falls', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alcockspruit','Alcockspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alderly','Alderly', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aldinville','Aldinville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Allerton','Allerton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aloe Corner','Aloe Corner', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Altona','Altona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alton','Alton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Altoona','Altoona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alva','Alva', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amanzana','Amanzana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amanzimtoti','Amanzimtoti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'aMatata','aMatata', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'aMatikulu','aMatikulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ambleside','Ambleside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amiel Park','Amiel Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amitikulu Station','Amitikulu Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Anerley','Anerley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Appelbos','Appelbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Appelsbosch','Appelsbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arboretum','Arboretum', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arbor Park','Arbor Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arborville','Arborville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ardee','Ardee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ardmore','Ardmore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ashley','Ashley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ashton','Ashton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Assina','Assina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Atherstone','Atherstone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Athlone','Athlone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Austerville','Austerville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avocadale','Avocadale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avondale','Avondale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Babanago','Babanago', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Babanango','Babanango', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ballengeich','Ballengeich', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ballitoville','Ballitoville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bambela','Bambela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Banbanango','Banbanango', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bandlabathwa','Bandlabathwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Banganomo','Banganomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Banginyama','Banginyama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bangonomo','Bangonomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bassonsdrif','Bassonsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bassonsdrift','Bassonsdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baviaanskrantz','Baviaanskrantz', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bayala','Bayala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bayete','Bayete', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bayhead','Bayhead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baynesfield','Baynesfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baynesfield Estate','Baynesfield Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beckenham','Beckenham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bedat','Bedat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bedat Store','Bedat Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beersheba','Beersheba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Belhambra','Belhambra', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bellair','Bellair', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bellevue','Bellevue', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Belliview','Belliview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bennezar','Bennezar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Berea','Berea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergville','Bergville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Berkleys','Berkleys', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Durnford','Port Durnford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Edward','Port Edward', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Natal','Port Natal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Portobello Beach','Portobello Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Portobello','Portobello', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Shepstone','Port Shepstone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Potela','Potela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Powercourt','Powercourt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Power''s Court','Power''s Court', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Proclamation','Proclamation', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prome','Prome', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prospect','Prospect', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pulunjani','Pulunjani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Punayi','Punayi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Puntans Hill','Puntans Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Punzidrift','Punzidrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Qonggo','Qonggo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Qongqo','Qongqo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Qubandaba','Qubandaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Qudeni','Qudeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Queensburgh','Queensburgh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Qwebela','Qwebela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Radley','Radley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ragbubee','Ragbubee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Raisethorpe','Raisethorpe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramsgate','Ramsgate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randalhurst','Randalhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randt','Randt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ranger','Ranger', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rayonne','Rayonne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reamour','Reamour', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Red Hill','Red Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Redlands','Redlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Regina','Regina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reservoir Hills','Reservoir Hills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Retreat','Retreat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reunion','Reunion', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rev Estates','Rev Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richardsbaai','Richardsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richards Bay','Richards Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richmond','Richmond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richmond-Rydal Vale','Richmond-Rydal Vale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietfontein','Rietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Besters','Besters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bethel','Bethel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bhicini','Bhicini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bhokweni','Bhokweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bhukubhukwini','Bhukubhukwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bishop Colenso','Bishop Colenso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bishopstowe','Bishopstowe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biyela','Biyela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blaauwbosch','Blaauwbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blaauwbosch Laagte','Blaauwbosch Laagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blaauwkrantz','Blaauwkrantz', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blackburn','Blackburn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blackmoor','Blackmoor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blarney','Blarney', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloemendal','Bloemendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blythedale Beach','Blythedale Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bo','Bo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bon-Accord','Bon-Accord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonds Drift','Bonds Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bongonoma','Bongonoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonjaneni','Bonjaneni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Borderland','Borderland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Borderland Estate','Borderland Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boschfontein','Boschfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boshoek','Boshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boston','Boston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Botha''s Hill','Botha''s Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boven','Boven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Braemar','Braemar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Braemer','Braemer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakfontein','Brakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakspruit','Brakspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brechan','Brechan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brechen','Brechen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brighton Beach','Brighton Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brookes','Brookes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooke''s Store','Brooke''s Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brookland','Brookland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooklands','Brooklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooklyn','Brooklyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooks Nek','Brooks Nek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Broteni','Broteni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brown Stones','Brown Stones', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bruntville','Bruntville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bruyns Hill','Bruyns Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bucklands Farm','Bucklands Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buckquoy','Buckquoy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bululwane','Bululwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bulwer','Bulwer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Burford','Burford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Burners','Burners', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Burnside','Burnside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bushyvales','Bushyvales', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Busingata','Busingata', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Busingatha','Busingatha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buxedeni','Buxedeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buxideni','Buxideni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'By-Products','By-Products', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Byrne','Byrne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Byrne Settlement','Byrne Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Calrossie','Calrossie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Calvert','Calvert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Calverts','Calverts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Camperdown','Camperdown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cars End','Cars End', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cartriff','Cartriff', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cato Bridge','Cato Bridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cato Manor','Cato Manor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cato Ridge','Cato Ridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cecelia','Cecelia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cedara Agricultural College','Cedara Agricultural College', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cedara','Cedara', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cedara College','Cedara College', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cedarville','Cedarville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Centocow','Centocow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cesa','Cesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ceza','Ceza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chakaskraal','Chakaskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chalwell','Chalwell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Charlestown','Charlestown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chase Valley','Chase Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatsworth 1','Chatsworth 1', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatsworth','Chatsworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatsworth Indian Township','Chatsworth Indian Township', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatwall','Chatwall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatwell','Chatwell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cibini','Cibini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clairwood','Clairwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clansthal','Clansthal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clan Syndicate Mill','Clan Syndicate Mill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claredon','Claredon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claremont','Claremont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clarevale','Clarevale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claridge','Claridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claustal','Claustal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clausthal','Clausthal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clavis','Clavis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cleland','Cleland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cleland House','Cleland House', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clermont','Clermont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clonleigh','Clonleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cold Place','Cold Place', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coleford','Coleford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colenso','Colenso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Collessie','Collessie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Con Amore','Con Amore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Congella','Congella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Conningarth','Conningarth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Connomore','Connomore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Convention','Convention', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coolgardie','Coolgardie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cooperdale','Cooperdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cornationweg','Cornationweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coronation Colliery','Coronation Colliery', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coronation','Coronation', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coronation Road','Coronation Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Costmore','Costmore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Couperdale','Couperdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Covington','Covington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Craig Side','Craig Side', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cranswick','Cranswick', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Creighton','Creighton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cremin','Cremin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cromwell','Cromwell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crystal Waters','Crystal Waters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cungewane','Cungewane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Curries Post','Curries Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Curry''s Post','Curry''s Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cutting','Cutting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cymru','Cymru', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cyrildene','Cyrildene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalebe','Dalebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalibba','Dalibba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalibho','Dalibho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalton','Dalton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dannhauser','Dannhauser', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Darnall','Darnall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dassenhoek','Dassenhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dayeni','Dayeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deemont','Deemont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deemount','Deemount', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delville','Delville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nyoni','Nyoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nzinga','Nzinga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oakhurst','Oakhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oaklands','Oaklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oakover','Oakover', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oatlands','Oatlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Obanjeni','Obanjeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Obesa','Obesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Obonjaneni','Obonjaneni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ocean View','Ocean View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Odidini','Odidini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Odlameni','Odlameni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'oGagwini','oGagwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ogedleni','Ogedleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'oGonothini','oGonothini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ohlalwini','Ohlalwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ohlelo','Ohlelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ohubandaba','Ohubandaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Okhukho','Okhukho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oliphants Hoek','Oliphants Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oliviershoek','Oliviershoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ongoye','Ongoye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onvergenoeg','Onvergenoeg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaVimbindlela','KwaVimbindlela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaYibusele','KwaYibusele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaZamazama','KwaZamazama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaZondela','KwaZondela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaZondi','KwaZondi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Zuluvuka','Kwa-Zuluvuka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwezi','Kwezi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ladysmith','Ladysmith', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'La Lucia','La Lucia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lamaci','Lamaci', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'La Mercy','La Mercy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lamont','Lamont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lamont Native Village','Lamont Native Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lamontville','Lamontville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langeni','Langeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langgewacht','Langgewacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langhoek','Langhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langkrans','Langkrans', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langley','Langley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lansdown','Lansdown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leisure Crest','Leisure Crest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lennoxton','Lennoxton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lidgetton','Lidgetton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lilani','Lilani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Limehill','Limehill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lockwood Hall','Lockwood Hall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lombardskop Settlement','Lombardskop Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Longlands','Longlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loskop','Loskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louisiana','Louisiana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louwsburg','Louwsburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lovat','Lovat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lovodale','Lovodale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lucerne','Lucerne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lundini','Lundini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lynnfield Park','Lynnfield Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabaleni','Mabaleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabibi','Mabibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabuyeni','Mabuyeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Macekane','Macekane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mackton','Mackton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madadeni','Madadeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madonela','Madonela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magabeni','Magabeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magadini','Magadini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magdalena','Magdalena', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magidini','Magidini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magode','Magode', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magogo','Magogo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magudu','Magudu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magut','Magut', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahashem','Mahashem', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahasheni','Mahasheni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahashini','Mahashini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahlabatini','Mahlabatini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahlombe','Mahlombe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahlone','Mahlone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahlubeni','Mahlubeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahlutshini','Mahlutshini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maidstone','Maidstone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maitland','Maitland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Majomela','Majomela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Majozini','Majozini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makabeleni','Makabeleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makakatana','Makakatana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhanyezi','Makhanyezi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhowe','Makhowe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhuluseni','Makhuluseni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhuzeni','Makhuzeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhwelela','Makhwelela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makhwezini','Makhwezini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makowe','Makowe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makuzeni','Makuzeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maloen','Maloen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malukaze','Malukaze', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malvern','Malvern', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamfene','Mamfene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mancana','Mancana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mandlazini','Mandlazini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mangengenene','Mangengenene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mangeti','Mangeti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manguzi','Manguzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mangwanteni','Mangwanteni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mangwenya','Mangwenya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manhashini','Manhashini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manor Gardens','Manor Gardens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mansfield','Mansfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manston','Manston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manyiseni','Manyiseni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manzibomvu','Manzibomvu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapelana','Mapelana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphelana','Maphelana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphophoma','Maphophoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphungu','Maphungu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapopoma','Mapopoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapopoma Store','Mapopoma Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapumulo','Mapumulo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maputa','Maputa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maqikizana','Maqikizana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marburg','Marburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Margate','Margate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Margate No. 4','Margate No. 4', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mariannhill','Mariannhill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marina Beach','Marina Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maritzburg','Maritzburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Martin','Martin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mary Gray','Mary Gray', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masabe','Masabe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mashayilanga','Mashayilanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Massondale','Massondale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matatiele','Matatiele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matshane','Matshane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matshetshisa','Matshetshisa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mayime','Mayime', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mayville','Mayville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbango','Mbango', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbangweni','Mbangweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbazwana','Mbazwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'M''Bazwane','M''Bazwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbekakanye','Mbekakanye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbiswe','Mbiswe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbodleni','Mbodleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbongolwane','Mbongolwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mboza','Mboza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mdimela','Mdimela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mdoni','Mdoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meadow Brook','Meadow Brook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meadownbrook','Meadownbrook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meekton','Meekton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meer en See','Meer en See', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mellville','Mellville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melmoth','Melmoth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melville','Melville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mengete','Mengete', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mengu','Mengu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merebank','Merebank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merewent','Merewent', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merrivale','Merrivale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merthley','Merthley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Messelfontein','Messelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Metzelfontein','Metzelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfabeni','Mfabeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfolozi','Mfolozi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfongosi','Mfongosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfulamhle','Mfulamhle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfulamuhla','Mfulamuhla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfume','Mfume', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfuyeni','Mfuyeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mgayi','Mgayi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mgodi','Mgodi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mgoqozi','Mgoqozi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mgugu','Mgugu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mgwenya','Mgwenya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helpmekaar','Helpmekaar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Henburg Park','Henburg Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hesselwood','Hesselwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hiabisa','Hiabisa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hibberdene','Hibberdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Highbury','Highbury', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Highfield','Highfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Highflats','Highflats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Highlands','Highlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hildesheim','Hildesheim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillandale','Hillandale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillary','Hillary', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillcrest','Hillcrest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillside','Hillside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hilltop','Hilltop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hilton','Hilton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hilton Road','Hilton Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Himeville','Himeville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlaba','Hlaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlabisa','Hlabisa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlangasa','Hlangasa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlazakazi','Hlazakazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlobane','Hlobane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlokozi','Hlokozi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hlomohlomo','Hlomohlomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hluhluwe','Hluhluwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hluku','Hluku', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holy Cross','Holy Cross', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holy Cross Mission','Holy Cross Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Home Farm','Home Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Homewood','Homewood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hopewell','Hopewell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Howick','Howick', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hulett''s','Hulett''s', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hutton Heights','Hutton Heights', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hylton','Hylton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ichubo','Ichubo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Idlebe','Idlebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ifafa Beach','Ifafa Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ifafa','Ifafa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ihluku','Ihluku', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ikwezi La Maci','Ikwezi La Maci', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Illovo Beach','Illovo Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Illovo','Illovo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'iMbali','iMbali', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Imfume','Imfume', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Impendhle','Impendhle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Impendhle Location','Impendhle Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Impendle','Impendle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Impenjati','Impenjati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Impolweni','Impolweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inadi','Inadi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inanda','Inanda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inanda Seminary','Inanda Seminary', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inchanga','Inchanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inchanga Park','Inchanga Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Indudutu','Indudutu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ingogo','Ingogo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ingwavama','Ingwavama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ingwavuma','Ingwavuma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inhlaxatia','Inhlaxatia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inhlazatatje','Inhlazatatje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inhlazatia','Inhlazatia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inhlazatje','Inhlazatje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inhluku','Inhluku', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inkumba','Inkumba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inkunzana','Inkunzana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Insuzi','Insuzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inyamane','Inyamane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inyamane Store','Inyamane Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inyanyadu','Inyanyadu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inzinga','Inzinga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isandlwana','Isandlwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ishogwe','Ishogwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isinembe','Isinembe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isipingo Beach','Isipingo Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isipingo','Isipingo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isipingo Village','Isipingo Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'iSithebe','iSithebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Island View','Island View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Islay','Islay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Islington','Islington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ispongo','Ispongo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Itafamsa','Itafamsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ivanhoe','Ivanhoe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ixopo','Ixopo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Izingolweni','Izingolweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Izitende','Izitende', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Izotsha','Izotsha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jaagbaan','Jaagbaan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jabavu','Jabavu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jacobs','Jacobs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jameson''s Drift','Jameson''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Job''s Town','Job''s Town', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jokweni','Jokweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jolwayo','Jolwayo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Joubertstroom','Joubertstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Journey''s End','Journey''s End', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jozini','Jozini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kakashill','Kakashill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalabasi','Kalabasi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalbassie','Kalbassie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ka-Mampungushe','Ka-Mampungushe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KaNzakene','KaNzakene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karridene','Karridene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keate''s Drift','Keate''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keats Drift','Keats Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kelso Beach','Kelso Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kelso','Kelso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kempdale','Kempdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenilworth','Kenilworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keyelaer','Keyelaer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietrivier','Rietrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietvlei','Rietvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversdale','Riversdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riverside','Riverside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversmeet','Riversmeet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'River View','River View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Romelcoh','Romelcoh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodekop','Roodekop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooidrif','Rooidrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rookdale','Rookdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roosboom','Roosboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rorke''s Drift','Rorke''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rork''s Drift','Rork''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosboom','Rosboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roseneath','Roseneath', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rossburgh','Rossburgh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rusfontein','Rusfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rustfontein','Rustfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Alban','Saint Alban', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Andrews','Saint Andrews', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Annes College','Saint Annes College', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Augustine''s','Saint Augustine''s', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Elmo','Saint Elmo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Faith''s','Saint Faith''s', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Isidore','Saint Isidore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint James Mission','Saint James Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint James','Saint James', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint John''s Mission','Saint John''s Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Johns','Saint Johns', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Lucia Estuary','Saint Lucia Estuary', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Lucia','Saint Lucia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Mathews','Saint Mathews', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Matthews','Saint Matthews', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Michael''s on Sea','Saint Michael''s on Sea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Mirlarm','Saint Mirlarm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Pauls Mission','Saint Pauls Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Paul''s Mission','Saint Paul''s Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Pauls','Saint Pauls', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Paul''s','Saint Paul''s', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Thomas Mission','Saint Thomas Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Thomas','Saint Thomas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Winifred''s Beach','Saint Winifred''s Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salisbury Island','Salisbury Island', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salpine','Salpine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salt Rock','Salt Rock', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salvation','Salvation', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Samungu','Samungu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandlaer','Sandlaer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sand River Valley','Sand River Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sangoyana','Sangoyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sanikidge','Sanikidge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sani Pass','Sani Pass', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sarabub','Sarabub', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sarsden Estate','Sarsden Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sawongo','Sawongo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saxony','Saxony', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoongezicht','Schoongezicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schroeders','Schroeders', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scotston','Scotston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scottburgh','Scottburgh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scottburgh South','Scottburgh South', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scottburg','Scottburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scottsburgh','Scottsburgh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seafield','Seafield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seaforth','Seaforth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sea Park','Sea Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sea View','Sea View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sea-View','Sea-View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sebensa','Sebensa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Selection Beach','Selection Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Selection','Selection', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sevenoaks','Sevenoaks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sewefontein','Sewefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sezela','Sezela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shakaskraal','Shakaskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shaka''s Rock','Shaka''s Rock', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shambles','Shambles', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sheffield Beach','Sheffield Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shelly Beach','Shelly Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shemula','Shemula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sherwood','Sherwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shiyabantu','Shiyabantu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shongwe','Shongwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shongwe Store','Shongwe Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shooters Hill','Shooters Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sibhudeni','Sibhudeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sidinsi','Sidinsi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sihangwane','Sihangwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sihlenga','Sihlenga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sihlutshana','Sihlutshana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silutshana','Silutshana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silverton','Silverton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Simozomeni','Simozomeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sinathingi','Sinathingi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Siphahleni','Siphahleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sitebe','Sitebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sithunjwana','Sithunjwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sitofela','Sitofela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Situndu','Situndu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sivivaneni','Sivivaneni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sivule','Sivule', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Siweni','Siweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Siyakhathala','Siyakhathala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sizabantu','Sizabantu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slaters','Slaters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slaters Store','Slaters Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slates Drift','Slates Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sobabili','Sobabili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sobamdlovu','Sobamdlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sobantu','Sobantu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soberton','Soberton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somerset','Somerset', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somkele','Somkele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somshoek','Somshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Southbroom','Southbroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Southport','Southport', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sovane','Sovane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sparks','Sparks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spesbona','Spesbona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spinnies','Spinnies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spitskop','Spitskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spitzkop','Spitzkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springfield Flats','Springfield Flats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springfield','Springfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mhlabatini','Mhlabatini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mhlangana','Mhlangana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mhlangana Mission','Mhlangana Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mhlatuze Flats','Mhlatuze Flats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mhlungwane','Mhlungwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middlebrook','Middlebrook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middle Valley','Middle Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mid Illovo','Mid Illovo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Millerton','Millerton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Miriam Booth','Miriam Booth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mjindi','Mjindi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkhiweni','Mkhiweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkhomazana','Mkhomazana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkhumbani','Mkhumbani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkobeni','Mkobeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkonjane','Mkonjane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkunya','Mkunya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkusi','Mkusi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkuze Estate','Mkuze Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkuze','Mkuze', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mkuzi','Mkuzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mlambangwenya','Mlambangwenya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mlambongwenya Store','Mlambongwenya Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mncongweni','Mncongweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mngampondo','Mngampondo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mnqobokazi','Mnqobokazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mobeni','Mobeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moguntia','Moguntia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mondlo','Mondlo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montclair','Montclair', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montebello','Montebello', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monteseel','Monteseel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montobella','Montobella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monzi','Monzi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooi River','Mooi River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooirivier','Mooirivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moorberg','Moorberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moorleigh','Moorleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morningside','Morningside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morrison','Morrison', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morrisons','Morrisons', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mossdale','Mossdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mountain Herberg Hostel','Mountain Herberg Hostel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mountain View','Mountain View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Alida','Mount Alida', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Charnwood','Mount Charnwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Edgecombe','Mount Edgecombe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Elias','Mount Elias', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Knoezan','Mount Knoezan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Knoezen','Mount Knoezen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Ngwibi','Mount Ngwibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Saint Bernard','Mount Saint Bernard', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpendle','Mpendle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpenjathi','Mpenjathi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpenjati','Mpenjati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpeshu','Mpeshu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpkakathini','Mpkakathini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpofana','Mpofana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpofane','Mpofane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpolweni','Mpolweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpophomeni','Mpophomeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpukunyoni','Mpukunyoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpumalanga','Mpumalanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpumulwane','Mpumulwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpunzi Drift','Mpunzi Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mqatsheni','Mqatsheni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mseleni','Mseleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Msholozi','Msholozi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Msimbiti','Msimbiti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Msinsini','Msinsini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtandeni','Mtandeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtendeni','Mtendeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtojeni','Mtojeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtolo','Mtolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtuba Ridge','Mtuba Ridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtubatuba','Mtubatuba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtulwa','Mtulwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtunzini','Mtunzini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mtwalume','Mtwalume', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muden','Muden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Munster','Munster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Munyu','Munyu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Musgrave','Musgrave', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mushane','Mushane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mvelabusha','Mvelabusha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mvenyane','Mvenyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mvoti Location','Mvoti Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mwemwe','Mwemwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nadi','Nadi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nagana','Nagana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nagana Research Headquarters','Nagana Research Headquarters', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Naidooville','Naidooville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Namakazi','Namakazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nantes','Nantes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nazareth','Nazareth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nazereth','Nazereth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ncamboshe','Ncamboshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ncungu','Ncungu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndabeni','Ndabeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndatshana Mission','Ndatshana Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndatshana','Ndatshana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndlovini','Ndlovini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndodwane','Ndodwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndongeni','Ndongeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndonyane','Ndonyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndulinde','Ndulinde', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndumo','Ndumo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndumu','Ndumu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndundula Mission','Ndundula Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndundula','Ndundula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndwedwe Magistracy','Ndwedwe Magistracy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ndwedwe','Ndwedwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nellie Valley','Nellie Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newark','Newark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newcastle','Newcastle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New England','New England', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Furrow','New Furrow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Garret','New Garret', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Garrett','New Garrett', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Germany','New Germany', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Guelderland','New Guelderland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Hanover','New Hanover', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Kingsmead','New Kingsmead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newlands','Newlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Rail','New Rail', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New River','New River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newstead','Newstead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Tendega','New Tendega', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Tendeka','New Tendeka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngagane','Ngagane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngazini','Ngazini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngilanyoni','Ngilanyoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngobeni','Ngobeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngotshe','Ngotshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngqolo','Ngqolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngudwini','Ngudwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nguka','Nguka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngutu','Ngutu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngutweni','Ngutweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngwabe','Ngwabe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngwangwana','Ngwangwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngwavuma','Ngwavuma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngwelezana','Ngwelezana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ngwenda','Ngwenda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlabamkhosi','Nhlabamkhosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlalwani','Nhlalwani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlambeni','Nhlambeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlangwini','Nhlangwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlazatsche','Nhlazatsche', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nhlazatshe','Nhlazatshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Njamhlophe','Njamhlophe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Njampela','Njampela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkande','Nkande', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkandhla','Nkandhla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkandla','Nkandla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkangala','Nkangala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkaphane','Nkaphane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkaseni','Nkaseni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkasini Estates','Nkasini Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkasini','Nkasini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkelabantwana','Nkelabantwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkifa Farm','Nkifa Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkivane','Nkivane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkiyakiya','Nkiyakiya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkiya','Nkiya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkoneni','Nkoneni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkonjane','Nkonjane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkonjeni','Nkonjeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkothweni','Nkothweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkronze','Nkronze', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkumba','Nkumba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwalini','Nkwalini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwali','Nkwali', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwambane','Nkwambane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwambosi','Nkwambosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwezela','Nkwezela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nocomboshe','Nocomboshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nolangeni','Nolangeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nolengeni','Nolengeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nombengeza','Nombengeza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nondabuya','Nondabuya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nondwene','Nondwene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nondweni','Nondweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nondweni Village','Nondweni Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nongoma','Nongoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nonjingigazi','Nonjingigazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nonjinjakazi','Nonjinjakazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nontshingo','Nontshingo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noodsberg','Noodsberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nooitgedacht','Nooitgedacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Normandien','Normandien', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Northdale','Northdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norwegian Mission Station','Norwegian Mission Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norwegian','Norwegian', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nottingham','Nottingham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nottingham Road','Nottingham Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nottingham weg','Nottingham weg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nqabeni','Nqabeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nqulwane','Nqulwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nqutu','Nqutu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nseleni','Nseleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nsimbini','Nsimbini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nsingweni','Nsingweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nsuze','Nsuze', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntabamhlope','Ntabamhlope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntabankulu','Ntabankulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntaba','Ntaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntabayengwe','Ntabayengwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntabayezulu','Ntabayezulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntabazwe','Ntabazwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntapuka','Ntapuka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntilingwe','Ntilingwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntiwa','Ntiwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntlolas','Ntlolas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntola','Ntola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntshishini','Ntshishini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntumeni','Ntumeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntunjambili','Ntunjambili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntuthunga','Ntuthunga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nyalazi River','Nyalazi River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nyanyadu','Nyanyadu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nyembi','Nyembi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Denny Dalton','Denny Dalton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Densainagar','Densainagar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dernali Station','Dernali Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dewdrop','Dewdrop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deyi','Deyi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dhlangubo','Dhlangubo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Didini','Didini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dingle','Dingle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dingley','Dingley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dlebe','Dlebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dlomodlomo','Dlomodlomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dokodweni','Dokodweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dokolwani','Dokolwani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dolwana','Dolwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dongothuli','Dongothuli', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Donnybrook','Donnybrook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doonside','Doonside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornhoek','Doornhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornkloof','Doornkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dragon Peaks','Dragon Peaks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drakensberg Garden','Drakensberg Garden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drakensberg Garden Hotel','Drakensberg Garden Hotel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driefontein','Driefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droogdal','Droogdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dududu','Dududu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duff''s Road','Duff''s Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dukuza','Dukuza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dumenkungwini','Dumenkungwini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dunbarton','Dunbarton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dundee','Dundee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durban','Durban', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durban-Noord','Durban-Noord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durban North','Durban North', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durnacol','Durnacol', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durslade','Durslade', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dwarsrand','Dwarsrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dwashiwa','Dwashiwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dweshula','Dweshula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eastlyn','Eastlyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'East Lynn','East Lynn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eBoshi','eBoshi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ebusingata','Ebusingata', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Echane','Echane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Echane Store','Echane Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edashi','Edashi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'e Dazini','e Dazini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edendale-dorp','Edendale-dorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edendale','Edendale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edendale Village','Edendale Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eden','Eden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edenvale','Edenvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eedeswold','Eedeswold', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eensgevonden','Eensgevonden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eFikesuthe','eFikesuthe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Egolokodo','Egolokodo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Egolomi','Egolomi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eGoqweni','eGoqweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekombe','Ekombe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekubusisweni','Ekubusisweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekufuleni','Ekufuleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekuhlengeni','Ekuhlengeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eKupholeni','eKupholeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekuthokozeni','Ekuthokozeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekuthuleni','Ekuthuleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekuthuthukeni','Ekuthuthukeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekutuleni','Ekutuleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekuvukeni','Ekuvukeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandskop','Elandskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandskraal','Elandskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandslaagte','Elandslaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsriver','Elandsriver', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elanga','Elanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elangeni','Elangeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elgin','Elgin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ellingham','Ellingham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elupepeni','Elupepeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMachobeni','eMachobeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMadundube','eMadundube', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMafakathini','eMafakathini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emakabeleni','Emakabeleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMangwasha','eMangwasha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eManyuka','eManyuka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMaswazini','eMaswazini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMatikwe','eMatikwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ematimatolo','Ematimatolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Embadleni','Embadleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emberton','Emberton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMbo','eMbo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Embulwane','Embulwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMbuyeni','eMbuyeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emfuleni','Emfuleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMfulumane','eMfulumane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMgadleteni','eMgadleteni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emhlangane','Emhlangane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eMkhohlwa','eMkhohlwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emmaus','Emmaus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emngcelen','Emngcelen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emoyeni','Emoyeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Empangeni','Empangeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Empembeni','Empembeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emseleni','Emseleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emushane','Emushane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emvunyana','Emvunyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emvunyane','Emvunyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Endulinde','Endulinde', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Endulindi','Endulindi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eNgedleni','eNgedleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eNgqekweni','eNgqekweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enhlahlehi','Enhlahlehi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eNhlalakahle','eNhlalakahle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enhlanhleni','Enhlanhleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enhlanhleni Mission','Enhlanhleni Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enkanyisweni','Enkanyisweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enkovukeni','Enkovukeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enquabeni','Enquabeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ensingweni','Ensingweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ensutha','Ensutha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eNtembani','eNtembani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Entumeni','Entumeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Entumeni Mission','Entumeni Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Entumeni Store','Entumeni Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Epsom','Epsom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erfpach','Erfpach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Escombe','Escombe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eshowe','Eshowe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esibhoweni','Esibhoweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eSibongile','eSibongile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esibudeni','Esibudeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esibudeni Store','Esibudeni Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esibudeni Store Site','Esibudeni Store Site', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eSigodaneni','eSigodaneni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eSikhawini','eSikhawini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esikhawini Township','Esikhawini Township', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esperanza','Esperanza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esseldene','Esseldene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Essenwood','Essenwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Estcourt','Estcourt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ethels Drive','Ethels Drive', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eTholeni','eTholeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Everdon','Everdon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Evunga','Evunga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Evutha','Evutha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eyrie','Eyrie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eZinyosini','eZinyosini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Faerie Glen','Faerie Glen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairfield','Fairfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairfield Mill','Fairfield Mill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairleigh','Fairleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairview','Fairview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fasimba','Fasimba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Feessaal','Feessaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Felixton','Felixton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ferrby','Ferrby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ferreby','Ferreby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fettercairn','Fettercairn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Finchley','Finchley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fitty Park','Fitty Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Flentershoek','Flentershoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Flnnland','Flnnland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Forest Hills','Forest Hills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Forest Ranger','Forest Ranger', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Forest View','Forest View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fort Louis','Fort Louis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fort Nottingham','Fort Nottingham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Frankland','Frankland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franklin','Franklin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franklins','Franklins', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franklin''s Store','Franklin''s Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fraser','Fraser', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Freeland Park','Freeland Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Frere','Frere', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Friedenau','Friedenau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Frome','Frome', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gailynn','Gailynn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gala','Gala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Game Warden','Game Warden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Game Wood','Game Wood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gansa','Gansa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gaqangezandla','Gaqangezandla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garden Castle','Garden Castle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gaybrook','Gaybrook', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geluksburg','Geluksburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gelukstadt','Gelukstadt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genezzano','Genezzano', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genozano','Genozano', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gezinsila','Gezinsila', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gillitts-Emberton','Gillitts-Emberton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gillitts','Gillitts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gingindhlova','Gingindhlova', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gingindhlovu','Gingindhlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gingindlovu','Gingindlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ginginhlovu','Ginginhlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glanfield','Glanfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gledhow','Gledhow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gledhow Mill','Gledhow Mill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Avon','Glen Avon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Bain','Glen Bain', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glencoe','Glencoe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glendale','Glendale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glendean','Glendean', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Echo','Glen Echo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenfield','Glenfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenmore Beach','Glenmore Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenside','Glenside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenwood','Glenwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glückstadt','Glückstadt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gobandhlovu','Gobandhlovu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gobeni','Gobeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Godeni','Godeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Godlogodlwane','Godlogodlwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goje','Goje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Golela','Golela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gologodo','Gologodo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Golokodo','Golokodo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Golweni','Golweni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gomane','Gomane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gonningarth','Gonningarth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Good Hope','Good Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goxe','Goxe', @activeid, @lastupdateaccountid, GETDATE());
