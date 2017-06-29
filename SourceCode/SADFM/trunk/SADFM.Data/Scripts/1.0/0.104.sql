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

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Western Cape','Western Cape', @activeid, @lastupdateaccountid, GETDATE()); SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Western Cape';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Graafwater','Graafwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grabouw','Grabouw', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grassy Park','Grassy Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Great Brak River','Great Brak River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greenhaven','Greenhaven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Green Point','Green Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greyton','Greyton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groendal','Groendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groenfontein','Groenfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groenpunt','Groenpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot-Brakrivier','Groot-Brakrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootfontein','Grootfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot-Jongensfontein','Groot-Jongensfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootjongensfonteinstrand','Grootjongensfonteinstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot Matjiesfontein','Groot Matjiesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootrivier','Grootrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot Silwermyn','Groot Silwermyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot Zwaarmoed','Groot Zwaarmoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Guguletu','Guguletu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Haarlem','Haarlem', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hannskop','Hannskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hanover Park','Hanover Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Happy Valley','Happy Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harkerville','Harkerville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harmony','Harmony', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeeskraal','Hartebeeskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeesrivier','Hartebeesrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeestkraal','Hartebeestkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeest Rivier','Hartebeest Rivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartenbos','Hartenbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hawston','Hawston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hazenjacht','Hazenjacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heatherlands','Heatherlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heathfield','Heathfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heidelberg','Heidelberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heideveld','Heideveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zand Rivier','Zand Rivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zebra','Zebra', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zoar','Zoar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zonnekus','Zonnekus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zonquasdrift','Zonquasdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zout Kuil','Zout Kuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zoutrivier','Zoutrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zuurbraak','Zuurbraak', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwart Klip','Zwart Klip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zweletemba','Zweletemba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Square Hill','Square Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Standplaas','Standplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Standplaats','Standplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stanford','Stanford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steelwater','Steelwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steenberg','Steenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steenbras','Steenbras', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stellenberg','Stellenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stellenbosch','Stellenbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilbaai-Oos','Stilbaai-Oos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilbaai','Stilbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilbaaistrand','Stilbaaistrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilbaai-Wes','Stilbaai-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Still Bay East','Still Bay East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Still Bay','Still Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Still Bay Strand','Still Bay Strand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Still Bay West','Still Bay West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stockville','Stockville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stompneusbaai','Stompneusbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stompneus Bay','Stompneus Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stormsvlei','Stormsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strandfontein','Strandfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strandskloof','Strandskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strand','Strand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Struisbaai','Struisbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Struis Bay','Struis Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suiderkruis','Suiderkruis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suider-Paarl','Suider-Paarl', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunnyacres','Sunnyacres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunnycroft','Sunnycroft', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunny Seas','Sunny Seas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunnyside','Sunnyside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sun Valley','Sun Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Surrey Estates','Surrey Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Surrey Estate','Surrey Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suurbraak','Suurbraak', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartklip','Swartklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartwater','Swartwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sweet Valley','Sweet Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swellendam','Swellendam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swiss Farm','Swiss Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Table View','Table View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tahiti','Tahiti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Takkap','Takkap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tamboerskloof','Tamboerskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tergniet','Tergniet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Teslaarsdal','Teslaarsdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Boulders','The Boulders', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Crags','The Crags', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Theerivier','Theerivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Homestead','The Homestead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Island','The Island', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thornton','Thornton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Three Anchor Bay','Three Anchor Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tokai','Tokai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Touws River','Touws River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Touwsrivier','Touwsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tulbagh Road','Tulbagh Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tulbagh','Tulbagh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tulbaghweg','Tulbaghweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tweefontein','Tweefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tygerberg Hills','Tygerberg Hills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uilenkraal','Uilenkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uilkraalmond','Uilkraalmond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitkoms','Uitkoms', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitvlugt','Uitvlugt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uniondale Road','Uniondale Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uniondale','Uniondale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uniondaleweg','Uniondaleweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upper Kouga','Upper Kouga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Rhynsdorf','Van Rhynsdorf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vanrhynsdorp','Vanrhynsdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Riebeeckstrand','Van Riebeeckstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wijksdorp','Van Wijksdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wyksdorp','Van Wyksdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Varkieskloof','Varkieskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vasco','Vasco', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Velddrift','Velddrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Velddrif','Velddrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vembeksbaai','Vembeksbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Venbekbaai','Venbekbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vermaaklikheid','Vermaaklikheid', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vermont','Vermont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vetkoekheuwel','Vetkoekheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Victory Hill','Victory Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Viljoenshof','Viljoenshof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Villiersdorp','Villiersdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vishoek','Vishoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vissers Hoek','Vissers Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vissershok','Vissershok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakteplaas','Vlakteplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleesbaai','Vleesbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleiland','Vleiland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlei River','Vlei River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleirivier','Vleirivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleisbaai','Vleisbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleiview','Vleiview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlermuisklip','Vlermuisklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlugt','Vlugt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voëlklip','Voëlklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Volmoed','Volmoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voorbaai','Voorbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voorbeeld Nedersetting','Voorbeeld Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voorsorg','Voorsorg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voorspoed','Voorspoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vredehoek','Vredehoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vredenburg','Vredenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vredendal','Vredendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vyeboom','Vyeboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vyekraal','Vyekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vygeboom','Vygeboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vyversrust','Vyversrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vyversrus','Vyversrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waenhuiskrans','Waenhuiskrans', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wagenhuiskrantz','Wagenhuiskrantz', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Warmwaterberg','Warmwaterberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wattle Park','Wattle Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waverley Mills','Waverley Mills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kilfinan','Kilfinan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kingfisher Creek','Kingfisher Creek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaarstroom','Klaarstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaasiagersberg','Klaasiagersberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaasjagersberg','Klaasjagersberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klarer','Klarer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaver','Klaver', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klawer','Klawer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinbaai','Kleinbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinberg','Kleinberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Bergrivier','Klein Bergrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Brakrivier','Klein-Brakrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Brakrivierstrand','Klein-Brakrivierstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Drakenstein','Klein-Drakenstein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinfontein','Kleinfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinmond','Kleinmond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinmondstrand','Kleinmondstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinplaat','Kleinplaat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinplaats','Kleinplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinrivier','Kleinrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Silwermyn','Klein Silwermyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Steenberg','Klein Steenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinstraat','Kleinstraat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinvlei','Kleinvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdale','Klipdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdrif','Klipdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipfontein','Klipfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipheuwel','Klipheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipkraal','Klipkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliprand','Kliprand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Knysna','Knysna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koelfontein','Koelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kogelfontein','Kogelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kommetje','Kommetje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kommetjie','Kommetjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koningsrivier','Koningsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kontiki','Kontiki', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koo','Koo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koringberg','Koringberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koude Rivier','Koude Rivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kraaifontein','Kraaifontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kranshoek Griekwa Nedersetting','Kranshoek Griekwa Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krigedam','Krigedam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruiskloof','Kruiskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruis River','Kruis River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruisrivier','Kruisrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruisvallei','Kruisvallei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuils River','Kuils River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuilsrivier','Kuilsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwaggaskloofdam','Kwaggaskloofdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waverley','Waverley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welcome Estate','Welcome Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welgemoed','Welgemoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wellington','Wellington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevreden','Weltevreden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevreder','Weltevreder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevrede','Weltevrede', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welton','Welton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Werda','Werda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wesbank','Wesbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westford Bridge','Westford Bridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westfordbrug','Westfordbrug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westlake','Westlake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Point','West Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Whitesands','Whitesands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Whupperthal','Whupperthal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilderness East','Wilderness East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilderness','Wilderness', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wildernis','Wildernis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wildeschutsbrand','Wildeschutsbrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wildschutsbrand','Wildschutsbrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilgerhof','Wilgerhof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windermere','Windermere', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windmeul','Windmeul', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windmill','Windmill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsor Park','Windsor Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witewater','Witewater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witsand','Witsand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wittebome','Wittebome', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witte Boomen','Witte Boomen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witteboom','Witteboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witte Drift','Witte Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wittedrif','Wittedrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wittewater','Wittewater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witwater','Witwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolseley','Wolseley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolwenkloof','Wolwenkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodlands','Woodlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodstock','Woodstock', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Woodville','Woodville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Worcester','Worcester', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wuppertal','Wuppertal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wupperthal','Wupperthal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wydgeleë','Wydgeleë', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wydgelegen','Wydgelegen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wynand''s River','Wynand''s River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wynandsrivier','Wynandsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wynberg Hill','Wynberg Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wynberg','Wynberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wyndover','Wyndover', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ysterfontein','Ysterfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ysterplaat','Ysterplaat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Yzerfontein','Yzerfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Op-die-Berg','Op-die-Berg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Orangezig','Orangezig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oranjezicht','Oranjezicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oteniekwa','Oteniekwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottery','Ottery', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ouda Brug','Ouda Brug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oude Bosch','Oude Bosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oudebrug','Oudebrug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oudekraalfontein','Oudekraalfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oudekraal','Oudekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oude Kraal','Oude Kraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oude Raapkraal','Oude Raapkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oude Scheur','Oude Scheur', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oudtshoorn','Oudtshoorn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oukraal','Oukraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ouland','Ouland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ouplaas','Ouplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ouplass','Ouplass', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Outeniekwa','Outeniekwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Outeniqua','Outeniqua', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oysseldorp','Oysseldorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paardeneiland','Paardeneiland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paarl','Paarl', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pacaltsdorp','Pacaltsdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pacaltsdrop','Pacaltsdrop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pampoenkraal','Pampoenkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Papendorp','Papendorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Papies Vlei Mission','Papies Vlei Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Papiesvlei','Papiesvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parkwood','Parkwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parow','Parow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parowvallei','Parowvallei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paternoster','Paternoster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paviesvlei','Paviesvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pearly Beach','Pearly Beach', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Penhill','Penhill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phanthom Acres','Phanthom Acres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phantom Acres','Phantom Acres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Philadelphia','Philadelphia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Philippi','Philippi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Philipsdale','Philipsdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piketberg','Piketberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piketburg','Piketburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pinegrove','Pinegrove', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pinelands','Pinelands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pineview','Pineview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piquetberg','Piquetberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Platdrift','Platdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plathuis','Plathuis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plettenbergbaai','Plettenbergbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plettenberg Bay','Plettenberg Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plumstead','Plumstead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pneil','Pneil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pniel','Pniel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aan de Doorns','Aan de Doorns', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aangenaam','Aangenaam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aasfontein','Aasfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Agulhas','Agulhas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albertina','Albertina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albertinia','Albertinia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albertiniahotel','Albertiniahotel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alfalfa','Alfalfa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alphen','Alphen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alphen Bridge','Alphen Bridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alphenbrug','Alphenbrug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amalienstein','Amalienstein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'An-de-Waterkant','An-de-Waterkant', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Angora','Angora', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Anysberg','Anysberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aprilskraal','Aprilskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arniston','Arniston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ashton','Ashton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Askraal','Askraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Athlone','Athlone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Atlantis','Atlantis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aurora','Aurora', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avontuur','Avontuur', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baardscheerderbosch','Baardscheerderbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baardscheerdersbosch','Baardscheerdersbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baardskeerderbos','Baardskeerderbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baardskeerdersbos','Baardskeerdersbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bailey''s Cottage','Bailey''s Cottage', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bain''s Kloof','Bain''s Kloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bakklysdrift','Bakklysdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bakoven','Bakoven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Balmoral','Balmoral', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Banghoek','Banghoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Banhoek','Banhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bantry Bay','Bantry Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barandas','Barandas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barrington','Barrington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barrydale','Barrydale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baviaanshoek','Baviaanshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bayview','Bayview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beacon Island Estate','Beacon Island Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beaufort-Wes','Beaufort-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beaufort West','Beaufort West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Belhar','Belhar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bella Vista','Bella Vista', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Belle Ombre','Belle Ombre', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bellville','Bellville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bellville South','Bellville South', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Belthorn','Belthorn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Berea','Berea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bereaville','Bereaville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergplaas','Bergplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergplaats','Bergplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergrivier','Bergrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergsig','Bergsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergvliet','Bergvliet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergwater','Bergwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Beaufort','Port Beaufort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Porterville','Porterville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prince Albert','Prince Albert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prince Alfred Hamlet','Prince Alfred Hamlet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prince Alfreds Hamlet','Prince Alfreds Hamlet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pringle Bay','Pringle Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prins Albert','Prins Albert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prinskraal','Prinskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Protem','Protem', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Raape Kraal','Raape Kraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Raapkraal','Raapkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rahloux','Rahloux', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ravensmead','Ravensmead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rawsonville','Rawsonville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Redelinghuis','Redelinghuis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Redelinghuys','Redelinghuys', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reebok','Reebok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Remhoogte','Remhoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Restvale','Restvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rheboksfontein','Rheboksfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rhebokskraal','Rhebokskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rheeboks Kraal','Rheeboks Kraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riebeek-Kasteel','Riebeek-Kasteel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riebeek-Wes','Riebeek-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riebeek West','Riebeek West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bettysbaai','Bettysbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Betty''s Bay','Betty''s Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bibby''s Hoek','Bibby''s Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biejesfontein','Biejesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bierberg','Bierberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesiesfontein','Biesiesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesjesfontein','Biesjesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bishop Lavis','Bishop Lavis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bishopscourt','Bishopscourt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bitterfontein','Bitterfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bitterwater','Bitterwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blanco','Blanco', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bland''s Drift','Bland''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blauwvlei','Blauwvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blesmerrie','Blesmerrie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blomtuin','Blomtuin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloubergsvlei','Bloubergsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloupunt','Bloupunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boesmanspad','Boesmanspad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bo-Koega','Bo-Koega', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bo-Kouga','Bo-Kouga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bomakierie','Bomakierie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bongoletu','Bongoletu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonnievale','Bonnievale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonteheuwel','Bonteheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bontheuwel','Bontheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boplaas','Boplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Borcherds','Borcherds', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosmanskloof','Bosmanskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bothasig','Bothasig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bothastrand','Bothastrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bot River','Bot River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Botrivier','Botrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bottelary','Bottelary', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Botterkloof','Botterkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bovenfontein','Bovenfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bovenplaats','Bovenplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brackenfell','Brackenfell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bracken Hill','Bracken Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakenfell','Brakenfell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakfontein A','Brakfontein A', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakfontein','Brakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakkefontein','Brakkefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandfontein','Brandfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandrivier','Brandrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandvlei','Brandvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandwacht','Brandwacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandwag','Brandwag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bredasdorp','Bredasdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Breede River','Breede River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Breërivier','Breërivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brenton-on-Sea','Brenton-on-Sea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bridgetown','Bridgetown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brightwater','Brightwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooklands','Brooklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooklyn','Brooklyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brookwood','Brookwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bruintjiesrivier','Bruintjiesrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffeljags River','Buffeljags River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffeljagsrivier','Buffeljagsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsbaai','Buffelsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsdrif','Buffelsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsdrift','Buffelsdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelskloof','Buffelskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bushman Drannings','Bushman Drannings', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cafda Village','Cafda Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Caledon','Caledon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Calitzdorp','Calitzdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Camfer','Camfer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Camphill Village','Camphill Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Camps Bay','Camps Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cape Town','Cape Town', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ceres','Ceres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chalsworth','Chalsworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Charleston Hill','Charleston Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Charlestown','Charlestown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chatsworth','Chatsworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chemory','Chemory', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Churchhaven','Churchhaven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Citrusdal','Citrusdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clanwilliam','Clanwilliam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clanwillian','Clanwillian', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claremont','Claremont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clareport','Clareport', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clifton','Clifton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cloeteskraal','Cloeteskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cloetesville','Cloetesville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clovelly','Clovelly', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Conradie','Conradie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Constantia','Constantia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Covie','Covie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cravenby','Cravenby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crawford','Crawford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crawley','Crawley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crossroads','Crossroads', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Da Gama Park','Da Gama Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dagbreek','Dagbreek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dal Josafat','Dal Josafat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'D''Almeida','D''Almeida', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalsig','Dalsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Danabaai','Danabaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Danga','Danga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Da Nova','Da Nova', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Darling','Darling', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Doorns','De Doorns', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deepwalls','Deepwalls', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Grendel','De Grendel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Grendle Farm','De Grendle Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Hoek','De Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delville Park','Delville Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Meul','De Meul', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oakdale','Oakdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oaklands','Oaklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oatlands','Oatlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Observatory','Observatory', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ocean View','Ocean View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Olkersia','Olkersia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onder-Papegaaiberg','Onder-Papegaaiberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onrus','Onrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onrust','Onrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onrustrivier','Onrustrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ons Rust','Ons Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kylemore','Kylemore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laaiplek','Laaiplek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laangebaan Village','Laangebaan Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laatsrivier','Laatsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ladismith','Ladismith', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'L''Agulhas','L''Agulhas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laingsburg','Laingsburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lake Marina','Lake Marina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lakeside','Lakeside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lambertsbaai','Lambertsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lambert''s Bay','Lambert''s Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langa','Langa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langa Location','Langa Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langa Native Location','Langa Native Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langebaan','Langebaan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langebaan Road','Langebaan Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langebaanweg','Langebaanweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langkloof','Langkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lansdowne','Lansdowne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lappiesbaai','Lappiesbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lappies Bay','Lappies Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laudina','Laudina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lavender Hill','Lavender Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeu-Gamka','Leeu-Gamka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwbosch','Leeuwbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leipoldtville','Leipoldtville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leipoldville','Leipoldville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lepelfontein Nedersetting','Lepelfontein Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Le Souvenir','Le Souvenir', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Linkside','Linkside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Little Brak River','Little Brak River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Llandudno','Llandudno', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lochlynne','Lochlynne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loch Venus','Loch Venus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lopende River','Lopende River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lopenderivier','Lopenderivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotus River','Lotus River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lutzville','Lutzville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Macassar','Macassar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maitland','Maitland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malagas','Malagas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malay Quarter','Malay Quarter', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malgas','Malgas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malkopvlei','Malkopvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malmesbury','Malmesbury', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamre','Mamre', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mandalay','Mandalay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manenberg','Manenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marina da Gama','Marina da Gama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marionhof','Marionhof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjesfontein','Matjesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjesrivier','Matjesrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjiesfontein','Matjiesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjieskloof','Matjieskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjies River','Matjies River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjiesrivier','Matjiesrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matroosfontein','Matroosfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'McGregor','McGregor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meadowridge','Meadowridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkboschstrand','Melkboschstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkbosstrand','Melkbosstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkhoutfontein','Melkhoutfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merweville','Merweville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mfuleni','Mfuleni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helderberg College','Helderberg College', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helderberg','Helderberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helderstroom','Helderstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hemelraad','Hemelraad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Herbertsdale','Herbertsdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hermanus','Hermanus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hermon','Hermon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Herold','Herold', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heroldsbaai','Heroldsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Het Kruis','Het Kruis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hex River','Hex River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hexrivier','Hexrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hiddingh','Hiddingh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Higgovale','Higgovale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Highland Home','Highland Home', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'High Riding','High Riding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoedjesbaai','Hoedjesbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoedjes Bay','Hoedjes Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoeko','Hoeko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoekwil','Hoekwil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoekwill','Hoekwill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoetjes Bay','Hoetjes Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hooikraal','Hooikraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoopvol','Hoopvol', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hopefield','Hopefield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hornlee','Hornlee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hotagterklip','Hotagterklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hot Springs','Hot Springs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houhoek','Houhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hou Moed','Hou Moed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houtbaai','Houtbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hout Bay','Hout Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Idasvallei','Idasvallei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Idas Valley','Idas Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Imhoff''s Gift','Imhoff''s Gift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Infanta','Infanta', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jakkalsvlei','Jakkalsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jamestown','Jamestown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Johnson''s Post','Johnson''s Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jongensfontein','Jongensfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jonkersberg','Jonkersberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jukfontein','Jukfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kaapstad','Kaapstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalabaskraal','Kalabaskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalbaskraal','Kalbaskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkbaai','Kalkbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalk Bay','Kalk Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkoond','Kalkoond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kamanassiedam','Kamanassiedam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kammanassiedam','Kammanassiedam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kampsbaai','Kampsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karatara','Karatara', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karatara Settlement','Karatara Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karoetjieskop','Karoetjieskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karwyderskraal','Karwyderskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Katzenberg','Katzenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kayamnandi','Kayamnandi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenridge','Kenridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kensington','Kensington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kerkrand','Kerkrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kerksrand','Kerksrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurbooms River','Keurbooms River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurboomsrivier','Keurboomsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurbooms Strand','Keurbooms Strand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurboomstrand','Keurboomstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurbosch','Keurbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurbos','Keurbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keurhoek','Keurhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keysers','Keysers', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khayelitsha','Khayelitsha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietfontein','Rietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riethuiskraal','Riethuiskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietpoort','Rietpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietvlei Number 1','Rietvlei Number 1', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riverlands','Riverlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversdale','Riversdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversdal','Riversdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riverside','Riverside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riviersonderend','Riviersonderend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rivier Zonder End','Rivier Zonder End', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Robertson','Robertson', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Robertsvlei','Robertsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rocklands','Rocklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roggebaai','Roggebaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roggeveld','Roggeveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roggevlei','Roggevlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Romans River','Romans River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Romansrivier','Romansrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooidriffie','Rooidriffie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiels','Rooiels', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiloop','Rooiloop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooi River','Rooi River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooirivier','Rooirivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosebank','Rosebank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosemoor','Rosemoor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosendal','Rosendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rozendale Farm','Rozendale Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rugby','Rugby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruiterbosch','Ruiterbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruitersbos','Ruitersbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rusoord','Rusoord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rustoord','Rustoord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruytersbosch','Ruytersbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rylands Estate','Rylands Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saarsveld Forestry School','Saarsveld Forestry School', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saasveld','Saasveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Helenabaai','Saint Helenabaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint Helena Bay','Saint Helena Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saint James','Saint James', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saldanha','Saldanha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salt River','Salt River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandbaai','Sandbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandberg','Sandberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sanddrift','Sanddrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandhills','Sandhills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandhoogte','Sandhoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandrivier','Sandrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saron','Saron', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sauer','Sauer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scarborough','Scarborough', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scheepersrus','Scheepersrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scheepersrust','Scheepersrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoemanshoek','Schoemanshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoongezicht','Schoongezicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schotschekloof','Schotschekloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scottville','Scottville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seaforth','Seaforth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sea Point','Sea Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedgefield','Sedgefield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seepunt','Seepunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seven Weeks Poort','Seven Weeks Poort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seweweekspoort','Seweweekspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sheepwalk','Sheepwalk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shoebury Heights','Shoebury Heights', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sidneyvale','Sidneyvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silverhurst','Silverhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silver Sands','Silver Sands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silvertown','Silvertown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silwermyn','Silwermyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Simonstad','Simonstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Simon''s Town','Simon''s Town', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skerpenhevwel','Skerpenhevwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skilpadgat','Skilpadgat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skipskop','Skipskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slanghoek','Slanghoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somersetwes','Somersetwes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somerset West','Somerset West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonquasdrif','Sonquasdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonskyn','Sonskyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonstraal','Sonstraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Southfield','Southfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutrivier','Soutrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Speelmansrivier','Speelmansrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spes Bona','Spes Bona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spies','Spies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spitskop','Spitskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spitzkop','Spitzkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springbok','Springbok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelbosjesveld','Middelbosjesveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelplaas','Middelplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelplaats','Middelplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middleton','Middleton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mike','Mike', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mikes','Mikes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Milnerton','Milnerton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mispah','Mispah', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mitchells Plain','Mitchells Plain', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molen Drift','Molen Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molshoop','Molshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montague Gardens','Montague Gardens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montagu','Montagu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montana','Montana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monteray','Monteray', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monte Vista','Monte Vista', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moordkuil','Moordkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moorreesburg','Moorreesburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morelig','Morelig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moreson','Moreson', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morning Star','Morning Star', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mosselbaai','Mosselbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mossel Bay','Mossel Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mossel River','Mossel River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mosselrivier','Mosselrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mouille Point','Mouille Point', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mowbray','Mowbray', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muishondfontein','Muishondfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muiskop','Muiskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muizenberg','Muizenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Murdoch Valley','Murdoch Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Murraysburg','Murraysburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nacht Wacht','Nacht Wacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nag Wag','Nag Wag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Napier','Napier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nature''s Valley','Nature''s Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nelspoort','Nelspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nenta','Nenta', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Neptune''s Corner','Neptune''s Corner', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Horizons','New Horizons', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newlands','Newlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Look','New Look', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New Sunnyside','New Sunnyside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newtons','Newtons', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newtown','Newtown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwe Drift','Nieuwe Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwefontein','Nieuwefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwerust','Nieuwerust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niewefontein','Niewefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nissenville','Nissenville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noetsie Knysna','Noetsie Knysna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noetsie','Noetsie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noetzie','Noetzie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noll','Noll', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nolls Halt','Nolls Halt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nooitgedacht','Nooitgedacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noorder-Paarl','Noorder-Paarl', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noordhoek','Noordhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norwood','Norwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwedorp','Nuwedorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuweland','Nuweland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwerus','Nuwerus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuy','Nuy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nyanga','Nyanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dennehof','Dennehof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Novo','De Novo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Nysna','De Nysna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Rust','De Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diasstrand','Diasstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diazville','Diazville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dido Valley','Dido Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Barakke','Die Barakke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Dam','Die Dam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Erwe','Die Erwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Grendel','Die Grendel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Hoek','Die Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Kelders','Die Kelders', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dieprivier','Dieprivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diepwalle','Diepwalle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Vlug','Die Vlug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Donkergat','Donkergat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doordrift','Doordrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornbaai','Doornbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornrivier','Doornrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornriviervlei','Doornriviervlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doringbaai','Doringbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doring Bay','Doring Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drew','Drew', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drieankerbaai','Drieankerbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droëvlakte','Droëvlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droëvlei','Droëvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droogevlakte','Droogevlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duiwe River','Duiwe River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duiwerivier','Duiwerivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'D''Urban','D''Urban', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durbanville','Durbanville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Durbanville Hills','Durbanville Hills', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Du Toitskloof','Du Toitskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Du Toitskloot','Du Toitskloot', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dwarskersbos','Dwarskersbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dwarskersenbosch','Dwarskersenbosch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dysseldorp','Dysseldorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dysselsdorp','Dysselsdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ebenezer','Ebenezer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ebenhaeser','Ebenhaeser', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edgemead','Edgemead', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edmonton','Edmonton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eendekuil','Eendekuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eerste River','Eerste River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eerste River Village','Eerste River Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eersterivier','Eersterivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eersterivier Settlement','Eersterivier Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eikenhof','Eikenhof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsbaai','Elandsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elands Bay','Elands Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsfontein','Elandsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elgin','Elgin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elim','Elim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elsenburg','Elsenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elsiesrivier','Elsiesrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'eNduli','eNduli', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Epping','Epping', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Epping Forest','Epping Forest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eselfontein','Eselfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eseljag','Eseljag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eureka','Eureka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eversdal','Eversdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ezeljacht','Ezeljacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Factreton','Factreton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Far Forest','Far Forest', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Faure','Faure', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fernwood','Fernwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fishhoek','Fishhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Flat Acres','Flat Acres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Formosa','Formosa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franschhoek','Franschhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franskraal','Franskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Franskraalstrand','Franskraalstrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'French Hoek','French Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fresnave','Fresnave', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gansbaai','Gansbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gans Bay','Gans Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gardens','Gardens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garden Village','Garden Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gaylee','Gaylee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geduld','Geduld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geelwal','Geelwal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gelukshoop','Gelukshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genadendal','Genadendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genasfontein','Genasfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'George','George', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Georgida','Georgida', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glencairn','Glencairn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glencairn Heights','Glencairn Heights', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Dirk','Glen Dirk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glentana','Glentana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goede Hoop','Goede Hoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedgeloof','Goedgeloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedgemoed','Goedgemoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedgemond','Goedgemond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedverwacht','Goedverwacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedverwag','Goedverwag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Good Hope','Good Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goodwood','Goodwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gordonsbaai','Gordonsbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gordon''s Bay','Gordon''s Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gordon''s Camp','Gordon''s Camp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gouda','Gouda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goudinie','Goudinie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goudini','Goudini', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goudini Road','Goudini Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goudiniweg','Goudiniweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goukama','Goukama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goukamma','Goukamma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gouna','Gouna', @activeid, @lastupdateaccountid, GETDATE());
