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

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Gauteng','Gauteng', @activeid, @lastupdateaccountid, GETDATE()); SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Gauteng';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Graley','Graley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grasmere','Grasmere', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greenview','Greenview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groenpunt','Groenpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot-Elandsvlei','Groot-Elandsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Halfway House','Halfway House', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartsenbergfontein','Hartsenbergfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartzenbergfontein','Hartzenbergfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hatfield','Hatfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hatherley','Hatherley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hatherly','Hatherly', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heather Bell','Heather Bell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heidelberg','Heidelberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heidelburg','Heidelburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hekpoort','Hekpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zesfontein','Zesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zonderwater','Zonderwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zonnehoeve','Zonnehoeve', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zusterstroom','Zusterstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springs','Springs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Spykerras','Spykerras', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stil Gelee','Stil Gelee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stofberg-Gedenkskool','Stofberg-Gedenkskool', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stofberg','Stofberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stoffberggedenkskool','Stoffberggedenkskool', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strathavon','Strathavon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strydfontein','Strydfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sunnyside','Sunnyside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Susterstroom','Susterstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartspruit','Swartspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sybrandskraal','Sybrandskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tarlton','Tarlton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tembisa','Tembisa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ten Acre','Ten Acre', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tetema','Tetema', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thabakhubedu','Thabakhubedu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Highlands','The Highlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'The Village','The Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thorndale','Thorndale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Three Rivers','Three Rivers', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tierpoort','Tierpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Toekomsrus','Toekomsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tokoza','Tokoza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trevallyn','Trevallyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Triomf','Triomf', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsakane','Tsakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Turffontein','Turffontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalplaas','Vaalplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalview','Vaalview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Valhalla','Valhalla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Valley Nedersettings','Valley Nedersettings', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Valley Settlements','Valley Settlements', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vanderbijlpark','Vanderbijlpark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van der Merweskroon','Van der Merweskroon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van der Merwe','Van der Merwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wyksrust','Van Wyksrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Van Wyksrus','Van Wyksrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vasfontein','Vasfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Venterpos-West','Venterpos-West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Venterspost','Venterspost', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Venterspos','Venterspos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vereeniging','Vereeniging', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verena','Verena', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verwoerdburg','Verwoerdburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Villieria','Villieria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakplaas','Vlakplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakplaats','Vlakplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vleikop','Vleikop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voortrekkerhoogte','Voortrekkerhoogte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voortrekkers','Voortrekkers', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Voortrekker','Voortrekker', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vosloorus','Vosloorus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vrededorp','Vrededorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waaikraal','Waaikraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Walkerville','Walkerville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wallmannstal','Wallmannstal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wallmannsthal','Wallmannsthal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wallmansthall','Wallmansthall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waltloo','Waltloo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterdal','Waterdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterkloof Glen','Waterkloof Glen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waterkloof','Waterkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Water''s Edge','Water''s Edge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khutsong','Khutsong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kings Kloof','Kings Kloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Elandsvlei','Klein Elandsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdrift','Klipdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipfontein','Klipfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klip River','Klip River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliprivier','Kliprivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kloofsig','Kloofsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kocksoord','Kocksoord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koedoe','Koedoe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Komnader','Komnader', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kromdraai','Kromdraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krugersdorp','Krugersdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krugersdorp West','Krugersdorp West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waverley','Waverley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Waverly','Waverly', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welbekend','Welbekend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welgedag','Welgedag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevredenpark','Weltevredenpark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welverdiend','Welverdiend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wemmer','Wemmer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wespark','Wespark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wes-Rand','Wes-Rand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westcliffe','Westcliffe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westcliff','Westcliff', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westdene','Westdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westergloor','Westergloor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Western Areas','Western Areas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Western Township','Western Township', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westford','Westford', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Fort','West Fort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westonaria','Westonaria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Park','West Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Rand Garden Estate','West Rand Garden Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Rand Garden','West Rand Garden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wheatlands','Wheatlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilgerivier','Wilgerivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Willowdene','Willowdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windsor','Windsor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wingate Park','Wingate Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witfield','Witfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witpoortjie','Witpoortjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wonderfontein','Wonderfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wylies Farm','Wylies Farm', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wynberg','Wynberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Yeoville','Yeoville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ystervarkfontein','Ystervarkfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ooster','Ooster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ophir','Ophir', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Orange Grove','Orange Grove', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Orlando','Orlando', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottosdrif','Ottosdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottosdrift','Ottosdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Paardekraal','Paardekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pageview','Pageview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Panpoort','Panpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parkhurst','Parkhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parkmore','Parkmore', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parktown','Parktown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Parkview','Parkview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Payneville','Payneville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Peacehaven','Peacehaven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Percydale','Percydale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Petit','Petit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Petronella','Petronella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pienaarsrivier Nedersetting','Pienaarsrivier Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pimville','Pimville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pinedene','Pinedene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwamhlanga','Kwamhlanga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaThema','KwaThema', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Akasia','Akasia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alberton','Alberton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albertynsville','Albertynsville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alexandra','Alexandra', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alrapark','Alrapark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alrode','Alrode', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Althea','Althea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Annaton','Annaton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Annlin','Annlin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Antwerp','Antwerp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arcon Park','Arcon Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aston Woods','Aston Woods', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Atteridgeville','Atteridgeville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avalon','Avalon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avondzon','Avondzon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Balmoral','Balmoral', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bantjesloo','Bantjesloo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baragwanath','Baragwanath', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baragwanath Hospital','Baragwanath Hospital', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barrage','Barrage', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baviaanspoort','Baviaanspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beckedan','Beckedan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bedfordview','Bedfordview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bedworth Park','Bedworth Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bekkersdal','Bekkersdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Benoni','Benoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pretoria-Noord','Pretoria-Noord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pretoria North','Pretoria North', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pretoria','Pretoria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pretoria-Wes','Pretoria-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pretoria West','Pretoria West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Primrose','Primrose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Protea','Protea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Protea Ridge','Protea Ridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putfontein','Putfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pylpunt','Pylpunt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pyramid','Pyramid', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Queenswood','Queenswood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randburg','Randburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randfontein','Randfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randfontein South','Randfontein South', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randgate','Randgate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randjesfontein','Randjesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Randridge','Randridge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ratanda','Ratanda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rayton','Rayton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Redan','Redan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Renos','Renos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rensburgdorp','Rensburgdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rensburg','Rensburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rhenosterfontein','Rhenosterfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Richmond','Richmond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietfontein','Rietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bhongwem','Bhongwem', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bhongweni Lokasie','Bhongweni Lokasie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blackheath','Blackheath', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blignautrus','Blignautrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blyvooruitsig','Blyvooruitsig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Blyvooruitzicht','Blyvooruitzicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boekenhoutfontein','Boekenhoutfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boipatong','Boipatong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boksburg','Boksburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bon Accord','Bon Accord', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Booysens','Booysens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bophelong','Bophelong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boskruin','Boskruin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakfontein','Brakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakpan','Brakpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandvlei','Brandvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brandylei','Brandylei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brenthurst','Brenthurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brentwood Park','Brentwood Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brink''s Vlakfontein','Brink''s Vlakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brixton','Brixton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bromona','Bromona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bronkhorstspruit','Bronkhorstspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooklyn','Brooklyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bryanston','Bryanston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bultfontein','Bultfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bynespoort','Bynespoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Capital Park','Capital Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Carletonville','Carletonville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Casseldale','Casseldale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Centurion','Centurion', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cerutiville','Cerutiville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Charterston','Charterston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chartwell','Chartwell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chrissiefontein','Chrissiefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clayville','Clayville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clubview','Clubview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clubview East','Clubview East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Constantiapark','Constantiapark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Craighall','Craighall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Craighall Park','Craighall Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crown Douglas','Crown Douglas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Culemborgpark','Culemborgpark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cullinan','Cullinan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Daleside','Daleside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dalview','Dalview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dancornia','Dancornia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Danville','Danville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Daveyton','Daveyton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Deur','De Deur', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Deur Estates','De Deur Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oberholzer','Oberholzer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oberholzer Settlement','Oberholzer Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Olifantsfontein','Olifantsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Onderstepoort','Onderstepoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oos-Driefontein','Oos-Driefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lady Selborne','Lady Selborne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'La Guelderland','La Guelderland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lakeside','Lakeside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Langlaagte','Langlaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laudium','Laudium', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lavenir','Lavenir', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laversburg','Laversburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lawley','Lawley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lawley South','Lawley South', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeukraal-Dos','Leeukraal-Dos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeukraal-Oos','Leeukraal-Oos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwfontein','Leeuwfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lenasia','Lenasia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lenteland','Lenteland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lewisham','Lewisham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Linden','Linden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lindequesdrif','Lindequesdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lindequesdrift','Lindequesdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Little Falls','Little Falls', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lochvaal','Lochvaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lombardy East','Lombardy East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loumarina','Loumarina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lyndhurst','Lyndhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lynnwood','Lynnwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lynnwood Manor','Lynnwood Manor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lyttelton','Lyttelton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maanhaarrand','Maanhaarrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabopane','Mabopane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mackenzieville','Mackenzieville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madeteleli','Madeteleli', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magaliesburg','Magaliesburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makometsane','Makometsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malotto','Malotto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malvern East','Malvern East', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malvern','Malvern', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamelodi','Mamelodi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maraisburg','Maraisburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marievale','Marievale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marshallstown','Marshallstown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marshalltown','Marshalltown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Martindale','Martindale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'McKay','McKay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meadowlands','Meadowlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melville','Melville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Menlo Park','Menlo Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meule','Meule', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meyerspark','Meyerspark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meyerton Farms','Meyerton Farms', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meyerton','Meyerton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helderblom','Helderblom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Helena''s Rust','Helena''s Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Henley on Klip','Henley on Klip', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hercules','Hercules', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heumingfontein','Heumingfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillbrow','Hillbrow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillshaven','Hillshaven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hillside','Hillside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hiltonia','Hiltonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holfontein','Holfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Homestead Apple Orchards','Homestead Apple Orchards', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Honeydew','Honeydew', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Honeyvale','Honeyvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hornsnek','Hornsnek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houghton Estate','Houghton Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houghton','Houghton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Houtkop','Houtkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hyde Park','Hyde Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inadan','Inadan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Inanda','Inanda', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Innesdale','Innesdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Irene','Irene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ironside','Ironside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isando','Isando', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Isidule','Isidule', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jabavu','Jabavu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jackson''s Drift','Jackson''s Drift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jameson Park','Jameson Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Johannesburg','Johannesburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kagiso','Kagiso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalbasfontein','Kalbasfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kameelpoortnek','Kameelpoortnek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kate Hamel','Kate Hamel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kate Hamel Settlement','Kate Hamel Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Katlehong','Katlehong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kempton Park','Kempton Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kenilworth','Kenilworth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kensington','Kensington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kew','Kew', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rikasrus','Rikasrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversdaie','Riversdaie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riversdale','Riversdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riverside','Riverside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rivonia','Rivonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Robertsham','Robertsham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roberts Heights','Roberts Heights', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rodora','Rodora', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodekrans','Roodekrans', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodepoort','Roodepoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodeport-Maraisburg','Roodeport-Maraisburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodia','Roodia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooihuiskraal','Rooihuiskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiwal','Rooiwal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roosevelt Park','Roosevelt Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosettenville','Rosettenville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosherville','Rosherville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roshnee','Roshnee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rosslyn','Rosslyn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rothdene','Rothdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rust ter Vaal','Rust ter Vaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandhurst','Sandhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandown','Sandown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandton','Sandton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saulsville','Saulsville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schapenrust','Schapenrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sebokeng','Sebokeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Selection Park','Selection Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seringkop','Seringkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sesfontein','Sesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sharpeville','Sharpeville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sharpville','Sharpville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silbermanspos','Silbermanspos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silberman''s Post','Silberman''s Post', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silverton','Silverton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sinoville','Sinoville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonderwater','Sonderwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonlandpark','Sonlandpark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonnedal','Sonnedal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sophiatown','Sophiatown', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soshanguve','Soshanguve', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Southdene','Southdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutpan','Soutpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soweto','Soweto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sphinx','Sphinx', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springfield Collieries','Springfield Collieries', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Middenerdale','Middenerdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mid-Ennerdale','Mid-Ennerdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Midrand','Midrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modderfontein','Modderfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mofolo','Mofolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mohlakeng','Mohlakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moloto','Moloto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monavoni','Monavoni', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monument Park','Monument Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooiplaas','Mooiplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooka','Mooka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morningside','Morningside', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moroka','Moroka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mount Hope','Mount Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mpanzaville','Mpanzaville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muldersdrif','Muldersdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Muldersdrift','Muldersdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nancefield','Nancefield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Natalspruit','Natalspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newclare','Newclare', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Newlands','Newlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'New State Areas','New State Areas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nigel','Nigel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noordheuwel','Noordheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norkem Park','Norkem Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Northcliff','Northcliff', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Northdene Estate','Northdene Estate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Northdene','Northdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Denneboom','Denneboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dersley','Dersley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Devon','Devon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diepkloof','Diepkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Discovery','Discovery', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dobsonville','Dobsonville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornfontein','Doornfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornkop','Doornkop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornpoort','Doornpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornrandjies','Doornrandjies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Droogheuwel','Droogheuwel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dube','Dube', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duduza','Duduza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duncanville','Duncanville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dunkeld','Dunkeld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dunnottar','Dunnottar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duxberry','Duxberry', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'East Lynne','East Lynne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'East Village','East Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eastwood','Eastwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edendale','Edendale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Edenvale','Edenvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eerste Fabrieke','Eerste Fabrieke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eersterus','Eersterus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eikenhof','Eikenhof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekandustria','Ekandustria', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ekangala','Ekangala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elands','Elands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsfontein','Elandsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsrivier','Elandsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elarduspark','Elarduspark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eldoradopark','Eldoradopark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eldoraigne','Eldoraigne', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eljeesee','Eljeesee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elsburg','Elsburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emmarentia','Emmarentia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Emmasdale','Emmasdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enkeldoorn','Enkeldoorn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enkeldoring','Enkeldoring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erand','Erand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erasmia','Erasmia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erasmus','Erasmus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Evaton','Evaton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairland','Fairland', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fairlands','Fairlands', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Farmall','Farmall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ferndale','Ferndale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fietas','Fietas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Florida','Florida', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fontainbleau','Fontainbleau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fontainebleau','Fontainebleau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fordsburg','Fordsburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Forfar','Forfar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Four Ways','Four Ways', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garsfontein','Garsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geduld','Geduld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geldenhuis','Geldenhuis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Germiston','Germiston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gezina','Gezina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gladysvale','Gladysvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Austin','Glen Austin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Donald','Glen Donald', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenharvie','Glenharvie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glenvista','Glenvista', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Golf View','Golf View', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Government Village','Government Village', @activeid, @lastupdateaccountid, GETDATE());
