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

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Northern Cape','Northern Cape', @activeid, @lastupdateaccountid, GETDATE()); SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Northern Cape';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grasbult','Grasbult', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Graspan','Graspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grasrug','Grasrug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grassmoor','Grassmoor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Green Island','Green Island', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grey Hill','Grey Hill', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Griekwastad','Griekwastad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Griquatown','Griquatown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groblershoop','Groblershoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groendal','Groendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootberg','Grootberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootderm','Grootderm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootdrink','Grootdrink', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot Mier','Groot Mier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootmis','Grootmis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grootmist','Grootmist', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot Witberg','Groot Witberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grypoort','Grypoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Haakdoorn','Haakdoorn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Halfpadrivier','Halfpadrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hanover','Hanover', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hanover Road','Hanover Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hanoverweg','Hanoverweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Happy Valley','Happy Valley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeest Vlakte','Hartebeest Vlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartswater','Hartswater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hedley Plains','Hedley Plains', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zandbergshoop','Zandbergshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zandvlei','Zandvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zirkie','Zirkie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zoetap','Zoetap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zonderhule South','Zonderhule South', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwaar Draai','Zwaar Draai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartmodder','Zwartmodder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartwater','Zwartwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steinkopf','Steinkopf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sternham','Sternham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stiebeuelvlei','Stiebeuelvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stillerus','Stillerus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilstaan-en-Afspring','Stilstaan-en-Afspring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilverwag','Stilverwag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stinkbrak','Stinkbrak', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stinkfontein','Stinkfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stink Puts','Stink Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stofbakkies','Stofbakkies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strandfontein','Strandfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Straussburg','Straussburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Struishoek','Struishoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strydenburg','Strydenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stuurmanspoort','Stuurmanspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Subridge','Subridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suikersteek','Suikersteek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sukses','Sukses', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sultanaoord','Sultanaoord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sutherland','Sutherland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sutton','Sutton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swaardraai','Swaardraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartbaadjie','Swartbaadjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartbaken','Swartbaken', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartkoppies','Swartkoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartkopspan','Swartkopspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartkop','Swartkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartmodder','Swartmodder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartoup','Swartoup', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sydney on Vaal','Sydney on Vaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Syoney-on-Vaal','Syoney-on-Vaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tarka se Kop','Tarka se Kop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Teebus','Teebus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Bend Store','The Bend Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Bend','The Bend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Theronsville','Theronsville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Van Wyks Vlei Settlement Plan','The Van Wyks Vlei Settlement Plan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tierputs','Tierputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tipperary','Tipperary', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Titiespan','Titiespan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Toekoms','Toekoms', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trooilapspan','Trooilapspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tweeloop','Tweeloop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uithou','Uithou', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitkoms','Uitkoms', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitkyk','Uitkyk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitsig','Uitsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitsoek','Uitsoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitvlug','Uitvlug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitzicht','Uitzicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ulco','Ulco', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ulyate','Ulyate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upington','Upington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Upper Gong-Gong','Upper Gong-Gong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaal Koppies','Vaal Koppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalpunt','Vaalpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalputs','Vaalputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'vaalput','vaalput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaderlandspan','Vaderlandspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Valspan','Valspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vanderkloof','Vanderkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van der Spuy','Van der Spuy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Rooi''s Vlei','Van Rooi''s Vlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wyksvlei Settlements','Van Wyksvlei Settlements', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wyksvlei','Van Wyksvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Zylsrust','Van Zylsrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Zylsrus','Van Zylsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Varsput','Varsput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Veepos','Veepos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Veertien Strome','Veertien Strome', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Veggat','Veggat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vendors Puts','Vendors Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verdors Puts','Verdors Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vergaderplek','Vergaderplek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vergenoeg','Vergenoeg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vermeulensput','Vermeulensput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verneukpan','Verneukpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verschep','Verschep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Victoria West','Victoria West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Victoria-Wes','Victoria-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vioolsdrift','Vioolsdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vioolsdrif','Vioolsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Visagiesfontein','Visagiesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vivierspan','Vivierspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleiplaas','Vleiplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vliegpan','Vliegpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vollgraaffsig','Vollgraaffsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vollop','Vollop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Volminksvlei','Volminksvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Volop','Volop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voorspoed','Voorspoed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vosberg','Vosberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vosburg','Vosburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vredelus','Vredelus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vriesklip','Vriesklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waldecks Plant','Waldecks Plant', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waldecks','Waldecks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waliekraai','Waliekraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wallekraal','Wallekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Warrenton','Warrenton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterval','Waterval', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khosis','Khosis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khubus','Khubus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khudutlou','Khudutlou', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khuis','Khuis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khuis Road','Khuis Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kielder','Kielder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kikafela','Kikafela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kimberley','Kimberley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaarwater','Klaarwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klavervlei','Klavervlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinberg','Kleinberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Droëhout','Klein Droëhout', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Gelukpan','Klein Gelukpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Koegab','Klein Koegab', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Koning','Klein-Koning', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Mier Nommer 1','Klein Mier Nommer 1', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Mier Nommer Een','Klein Mier Nommer Een', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Mottelsrivier','Klein Mottelsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Nourivier','Klein-Nourivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Rosynebos','Klein Rosynebos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinsee','Kleinsee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Springbokoog','Klein Springbokoog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinvlei','Kleinvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinvlie','Kleinvlie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Witberg','Klein Witberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinzee','Kleinzee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klerkshoop','Klerkshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleurlingnedersetting','Kleurlingnedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipaar Bo','Klipaar Bo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipaar','Klipaar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdam','Klipdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliphoogte','Kliphoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipkolk','Klipkolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klippunt','Klippunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koedoeskloof','Koedoeskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koegas Bridge','Koegas Bridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koegasbrug','Koegasbrug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koegas','Koegas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koekoeb','Koekoeb', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koekoep','Koekoep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koeris','Koeris', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koeskop','Koeskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koiingnaas','Koiingnaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koingnaas','Koingnaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Komaggas','Komaggas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Komaggas Mission','Komaggas Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kommetjiesdam','Kommetjiesdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kompromise','Kompromise', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koning','Koning', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koodoosbergdrift','Koodoosbergdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koodoosbergdrift Store','Koodoosbergdrift Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koopmansfontein','Koopmansfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koppies Dam','Koppies Dam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kortdoorn','Kortdoorn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kortdoring','Kortdoring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kotzeshoop','Kotzeshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kotzes Kolk','Kotzes Kolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kotzesrus','Kotzesrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kotzesrust','Kotzesrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kouefontein','Kouefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kraalkop','Kraalkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kristal','Kristal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krugersdam','Krugersdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kurees','Kurees', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kurrees','Kurrees', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuruman','Kuruman', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwaggakolk','Kwaggakolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welgelegen','Welgelegen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevrede','Weltevrede', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Werda','Werda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westerberg','Westerberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westerburg','Westerburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Whyenbah','Whyenbah', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wielkolk Laagte','Wielkolk Laagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilgenhoutsdrif','Wilgenhoutsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Williston','Williston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilmae','Wilmae', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilput','Wilput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsorton Dorp','Windsorton Dorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsorton Road Station','Windsorton Road Station', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsorton Road','Windsorton Road', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsorton Village','Windsorton Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsortonwegstasie','Windsortonwegstasie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsortonweg','Windsortonweg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsorton','Windsorton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winton','Winton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witdam','Witdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witdorp','Witdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witdrop','Witdrop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witfontein','Witfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witkalk','Witkalk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witkoppies','Witkoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witputs','Witputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witput','Witput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wittedorp','Wittedorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolfberg','Wolfberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ysterdoring','Ysterdoring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Orania','Orania', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oranjevallei','Oranjevallei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Osbak','Osbak', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ou Opdam','Ou Opdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Papkuil','Papkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pappa Raas','Pappa Raas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Patryspan','Patryspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paulshoek','Paulshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pelindaba','Pelindaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pella Mission','Pella Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pella','Pella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Petersburg','Petersburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Petersus','Petersus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Petrusville','Petrusville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Philipstown','Philipstown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pierings','Pierings', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pieserton House','Pieserton House', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plaathoek','Plaathoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plaatjesdam','Plaatjesdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plaatjiesdam','Plaatjiesdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Platdam','Platdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Platsambok','Platsambok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plooysberg','Plooysberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Plooysburg','Plooysburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pniel Estates','Pniel Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pniel Mission','Pniel Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pofadder','Pofadder', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Poljaspoort','Poljaspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aggeneis','Aggeneis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aggeneys','Aggeneys', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alexanderbaai','Alexanderbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alexander Bay','Alexander Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alheit','Alheit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Annasgeluk','Annasgeluk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Annashoop','Annashoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Annisfontein','Annisfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arbeidsvreug','Arbeidsvreug', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ariemagom','Ariemagom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ariesputs','Ariesputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Asbosbam','Asbosbam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aseries Puts','Aseries Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Askham','Askham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aucampsrus','Aucampsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Auchas','Auchas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aughrabies','Aughrabies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Augrabies','Augrabies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Badenhorstdam','Badenhorstdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bakenkop','Bakenkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bakenkop Store','Bakenkop Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Balburney','Balburney', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barker','Barker', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barker''s Halt','Barker''s Halt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barkly-Wes','Barkly-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barkly West','Barkly West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bastersput','Bastersput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beaconfield','Beaconfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beaconsfield','Beaconsfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beesdam','Beesdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beginsil','Beginsil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bend','Bend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergsig','Bergsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bergsputte','Bergsputte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Poortjie','Poortjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Popolis','Popolis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Port Nolloth','Port Nolloth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Postmasburg','Postmasburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Potfontein','Potfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Prieska','Prieska', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putsies B','Putsies B', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putsies','Putsies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putsonderwater','Putsonderwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putzonderwater','Putzonderwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reitfontein','Reitfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Remount Camp','Remount Camp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Remount Depot','Remount Depot', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reneen','Reneen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rensville','Rensville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Request','Request', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reservoir','Reservoir', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richmond','Richmond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ridgewater','Ridgewater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riemvasmaak','Riemvasmaak', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietbergmyn','Rietbergmyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietfontein','Rietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bessiedam','Bessiedam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bethulie','Bethulie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesies','Biesies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blaauboskom','Blaauboskom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blaauwkrantz','Blaauwkrantz', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bladgrond','Bladgrond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bladgrond-Noord','Bladgrond-Noord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blesbokhoek','Blesbokhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blinkklip','Blinkklip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloekomhoogte','Bloekomhoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloubospan','Bloubospan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloupoort','Bloupoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blouputs','Blouputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blouvlei','Blouvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boegoeberg Besproeiings Nedersetting','Boegoeberg Besproeiings Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boegoeberg','Boegoeberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boegoeberg Dam','Boegoeberg Dam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boitshoko','Boitshoko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bojelakgomo','Bojelakgomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bokkraal','Bokkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bok se Puts','Bok se Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boksputs','Boksputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bolelakgapu','Bolelakgapu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bolellacarpu','Bolellacarpu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonfoi','Bonfoi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boomrivier','Boomrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boorwater','Boorwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosbult','Bosbult', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bossjesdam','Bossjesdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bowden','Bowden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakboschkolk','Brakboschkolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakbos Kolk','Brakbos Kolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakputs','Brakputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandkloof','Brandkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandvlei','Brandvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bretby','Bretby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brierspan','Brierspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Britstown','Britstown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brospan','Brospan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brussel','Brussel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buchuberg Irrigation Settlement','Buchuberg Irrigation Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buchufontein','Buchufontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bucklands','Bucklands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bucklands-Nedersetting','Bucklands-Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bucklands Settlement','Bucklands Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bucklegraf','Bucklegraf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bulkrans','Bulkrans', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bulsny','Bulsny', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bussons Kloof','Bussons Kloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Calvinia','Calvinia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Campbell-Beukes','Campbell-Beukes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Campbell','Campbell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Carnarvon','Carnarvon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Carolusberg','Carolusberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Christiana','Christiana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clearwater','Clearwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colesberg','Colesberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colesberg Dorp','Colesberg Dorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colesberg Town','Colesberg Town', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coloured Settlement','Coloured Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Concordia','Concordia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Constantia','Constantia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Content','Content', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Copperton','Copperton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cruachan','Cruachan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Currie''s Camp','Currie''s Camp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Daberas','Daberas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dagboetie','Dagboetie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dagbreek','Dagbreek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Damplaats','Damplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Damskolk','Damskolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Daniëlskuil','Daniëlskuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Aar','De Aar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Bakke','De Bakke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Beers Farm','De Beers Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deben','Deben', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deberas','Deberas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Bruynsrus','De Bruynsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dedeben','Dedeben', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deelfontein','Deelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deelpan','Deelpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Halt','De Halt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Hoek','De Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Hoop','De Hoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Kruis','De Kruis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delpoorts Hope','Delpoorts Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delportshoop','Delportshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delport''s Hope','Delport''s Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delvitle','Delvitle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'O''Grabie West','O''Grabie West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Okiep','Okiep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Olie Rivier','Olie Rivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Olifantshoek','Olifantshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onderste Doornknie','Onderste Doornknie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ongedad','Ongedad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onseepkans','Onseepkans', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onverwags','Onverwags', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'O''Okiep','O''Okiep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'La Kocks Hoop','La Kocks Hoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lambrechtsdrif','Lambrechtsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lambrechts Drift','Lambrechts Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langbaken','Langbaken', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langberg','Langberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeu Bos','Leeu Bos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeukloof','Leeukloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekkersing','Lekkersing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekkersing School','Lekkersing School', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lek-Lek','Lek-Lek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leliefontein','Leliefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lepelfontein','Lepelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lime Acres','Lime Acres', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Limestone Kraal','Limestone Kraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Limewell','Limewell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Location','Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loeriesfontein','Loeriesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lohatla','Lohatla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lohatlha','Lohatlha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Longlands','Longlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lothakane','Lothakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louisvale','Louisvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louretha','Louretha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louwbosch Coloured Settlement','Louwbosch Coloured Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louwbos Coloured Settlement','Louwbos Coloured Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louwsrust','Louwsrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lovedale','Lovedale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lower Dikgatlhong','Lower Dikgatlhong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lower Dikgatlon','Lower Dikgatlon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loxton','Loxton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loxtonvale','Loxtonvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lupanie','Lupanie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lupapazi','Lupapazi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lushof','Lushof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lutzburg','Lutzburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maansrus','Maansrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Majeng','Majeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malanswil','Malanswil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malherbe','Malherbe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maltrap','Maltrap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mancorp Mine','Mancorp Mine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mantshilibeni','Mantshilibeni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marchand','Marchand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maremane','Maremane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marlo','Marlo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marydale','Marydale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mary''s Rust','Mary''s Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matjieskloof','Matjieskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlakeng','Matlakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matsap','Matsap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matzap','Matzap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mayeng','Mayeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkboom','Melkboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkrivier','Melkrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melkstort','Melkstort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meltonwold Estate','Meltonwold Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meltonwold','Meltonwold', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merino Dale','Merino Dale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merino','Merino', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merriman','Merriman', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meruche','Meruche', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merwelaagte','Merwelaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helpmekaar','Helpmekaar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Henkries Mond','Henkries Mond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heuningneskloof','Heuningneskloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hex River','Hex River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Higgs'' Hope','Higgs'' Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoëveld','Hoëveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holboskolk','Holboskolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holgat Farm','Holgat Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holgat','Holgat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Homevale','Homevale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hondeklipbaai','Hondeklipbaai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hondeklip Bay','Hondeklip Bay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hondepan','Hondepan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoogland','Hoogland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hopetown','Hopetown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hotazel','Hotazel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houniams','Houniams', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hutchinson','Hutchinson', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inkbos','Inkbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Irene','Irene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jackson','Jackson', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jagpad','Jagpad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jakkalsputs','Jakkalsputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jobseputs','Jobseputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Johnniesdale','Johnniesdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Johnniesluck','Johnniesluck', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kaaldraai','Kaaldraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kaimoepslaagte','Kaimoepslaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kakamas','Kakamas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kakamas-Oos','Kakamas-Oos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalaharigrens','Kalaharigrens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkdam','Kalkdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkoond','Kalkoond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kamaggas','Kamaggas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kamassies','Kamassies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kameelboom','Kameelboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kameelhoek','Kameelhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kameelpoort','Kameelpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kamieskroon','Kamieskroon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kanoneiland','Kanoneiland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kareeboomcyfer','Kareeboomcyfer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karkams','Karkams', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karnmelkkolk','Karnmelkkolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karoedap','Karoedap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karos','Karos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karreeputs','Karreeputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karringmelkskolk','Karringmelkskolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kathu','Kathu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keimoes','Keimoes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenardt','Kenardt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenhardt','Kenhardt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenilworth','Kenilworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietgat','Rietgat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietkloof','Rietkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ritchie','Ritchie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riverton','Riverton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rivierplaas','Rivierplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ronald''s Vlei','Ronald''s Vlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooidam','Rooidam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooifontein','Rooifontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooikoenap','Rooikoenap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooikoppies','Rooikoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooilyf','Rooilyf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooipan','Rooipan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooipunt','Rooipunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiputs','Rooiputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooivlei','Rooivlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooivloer','Rooivloer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiwal Suid','Rooiwal Suid', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosedale','Rosedale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruimte','Ruimte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rusten','Rusten', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rykheersputs','Rykheersputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saaipoort','Saaipoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saalspan','Saalspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sabiesies','Sabiesies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sak River','Sak River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sakrivier','Sakrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salsola','Salsola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandfontein','Sandfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandkoppie Hut','Sandkoppie Hut', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saulstraat','Saulstraat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schepkolk','Schepkolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schmidtsdrif','Schmidtsdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schmidts Drift','Schmidts Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schulpfontein','Schulpfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sculpfontein','Sculpfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seekoebaard Annex','Seekoebaard Annex', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seekoebaard No. 2','Seekoebaard No. 2', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seekoebaard Number Two','Seekoebaard Number Two', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seekoeibaardsnek','Seekoeibaardsnek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ses Brugge','Ses Brugge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shippard','Shippard', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sidi Barrani','Sidi Barrani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sidney on Vaal','Sidney on Vaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sishen','Sishen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skeerhok','Skeerhok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skeerwater','Skeerwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skerpioenkolk','Skerpioenkolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skerpioenpunt','Skerpioenpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skerploenpunt','Skerploenpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skietfontein','Skietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skulpfontein','Skulpfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Smith''s Mine','Smith''s Mine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Smits Kraal','Smits Kraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soebatsfontein','Soebatsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sommas','Sommas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Somnaas','Somnaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonderpan-Oos','Sonderpan-Oos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonderwaterkraal','Sonderwaterkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonop Veepos','Sonop Veepos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonstraal','Sonstraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutputs','Soutputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutrivier','Soutrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Speelmanshoek','Speelmanshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spesbona','Spesbona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spitzkop','Spitzkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springbok Fontein','Springbok Fontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springbok','Springbok', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelerf','Middelerf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelfontein','Middelfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middelfourieskolk','Middelfourieskolk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middel Koegas','Middel Koegas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middel','Middel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mier','Mier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modderfontein','Modderfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokala','Mokala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mon Repos','Mon Repos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooipan','Mooipan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooirivier','Mooirivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moolmansdam','Moolmansdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Môreson','Môreson', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morrels Puts','Morrels Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mountain View','Mountain View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Rupert','Mount Rupert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Murasie','Murasie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Naauwpoort','Naauwpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nababeep','Nababeep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nababiep','Nababiep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nabaiep','Nabaiep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Namaroep','Namaroep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Narap','Narap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Naries','Naries', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Narrap','Narrap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Neilersdrif','Neilersdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Neilersdrift','Neilersdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Neus','Neus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newlands','Newlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niekerhshoop','Niekerhshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niekerkshoop','Niekerkshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niekerkshope','Niekerkshope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niekerks','Niekerks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nietemin','Nietemin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwefontein','Nieuwefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwepos','Nieuwepos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nieuwoudtville','Nieuwoudtville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nigramoep','Nigramoep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noenieput','Noenieput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noenies Puts','Noenies Puts', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nokanna','Nokanna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norakei','Norakei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norokei','Norokei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norvalspont','Norvalspont', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noupoort','Noupoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'N''Rougas Noord','N''Rougas Noord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntshatshongo','Ntshatshongo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwebegin','Nuwebegin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwedam','Nuwedam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwefontein','Nuwefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwerus','Nuwerus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwevlei','Nuwevlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Niel','De Niel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deniel','Deniel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Rust','De Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Vloere','De Vloere', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dibeng','Dibeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Hoek','Die Hoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diemansput-suid','Diemansput-suid', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Donkiekraal','Donkiekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornbank','Doornbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doringrivier','Doringrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Douglas','Douglas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Draghoender','Draghoender', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driehoek','Driehoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driekop','Driekop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drieweeksleegte','Drieweeksleegte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drifsand','Drifsand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drift Hotel','Drift Hotel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droogeboom','Droogeboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droogenhoutputs','Droogenhoutputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duikersdal','Duikersdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dwarsvlei','Dwarsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edenville','Edenville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eierdopput','Eierdopput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eirdopput','Eirdopput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eksteenfontein','Eksteenfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eksteenkuil','Eksteenkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eksteenskuil','Eksteenskuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eldorado','Eldorado', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elim','Elim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erlanksrus','Erlanksrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erlanksrust','Erlanksrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eureka','Eureka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Exelsior','Exelsior', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Faans Grove','Faans Grove', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Farview','Farview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Flamingo Vlei','Flamingo Vlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fort Peddie','Fort Peddie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fourteen Streams','Fourteen Streams', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fransenville','Fransenville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fraserburg','Fraserburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Futchersplaas','Futchersplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Malelo','Ga-Malelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gamalilo','Gamalilo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gamoep','Gamoep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gamolilo','Gamolilo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gannaholte','Gannaholte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gannapoortjie','Gannapoortjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ganspan','Ganspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gariep','Gariep', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garies','Garies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gathlose','Gathlose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Tlhose','Ga-Tlhose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geduld','Geduld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geelbeksdam','Geelbeksdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geelbospan','Geelbospan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geluk','Geluk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gemsbokbult','Gemsbokbult', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genadedal','Genadedal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genoembies','Genoembies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gerhardtsput','Gerhardtsput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geselskap','Geselskap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Allen','Glen Allen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glosam','Glosam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goodluck','Goodluck', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goop','Goop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gordonia','Gordonia', @activeid, @lastupdateaccountid, GETDATE());
