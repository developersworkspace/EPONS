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

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'North West','North West', @activeid, @lastupdateaccountid, GETDATE()); SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'North West';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grantion','Grantion', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grantleigh','Grantleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Grayfield','Grayfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Greenwich','Greenwich', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Groot-Marico','Groot-Marico', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Haaskraal','Haaskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hakboslaagte','Hakboslaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Halifax','Halifax', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hammanskraal','Hammanskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harpington','Harpington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harrow','Harrow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartbeesfontein','Hartbeesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartbeespoort','Hartbeespoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeesfontein','Hartebeesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeestfontein','Hartebeestfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartebeestpoort','Hartebeestpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Harts River','Harts River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hartsrivier','Hartsrivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hauptsrus','Hauptsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hauptsrust','Hauptsrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heathview','Heathview', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heavyrest Mission','Heavyrest Mission', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hebron','Hebron', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heiso','Heiso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zaphiri','Zaphiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zeerust','Zeerust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartbooystad','Zwartbooystad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Zwartruggens','Zwartruggens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springvale','Springvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Steilnek','Steilnek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stella','Stella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stewartby','Stewartby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sthaberg','Sthaberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stilfontein','Stilfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stillerus','Stillerus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stinkwater','Stinkwater', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Stoffelshoek','Stoffelshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Strydfontein','Strydfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suikerbostuin','Suikerbostuin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sun City','Sun City', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Supingstad','Supingstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sutelong','Sutelong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Suurman','Suurman', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartbooistad','Swartbooistad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartbooistat','Swartbooistat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartboom','Swartboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartdamstad','Swartdamstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartdamstat','Swartdamstat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartkopfonteinhek','Swartkopfonteinhek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swartruggens','Swartruggens', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sweethome','Sweethome', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sydney','Sydney', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Syferkuil','Syferkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Taaibosbult','Taaibosbult', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Takaneng','Takaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tamasikwa','Tamasikwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Taungs','Taungs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Taung','Taung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tay','Tay', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tekort','Tekort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Temba','Temba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tenby','Tenby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thabantswana','Thabantswana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thaba-Sione','Thaba-Sione', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thabeng','Thabeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thamoanche','Thamoanche', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thamoyantshe','Thamoyantshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thekane','Thekane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thekwane','Thekwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thelesho','Thelesho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thepe','Thepe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thlabane','Thlabane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thladistad','Thladistad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thomasdale','Thomasdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thomeng','Thomeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thota va tau','Thota va tau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thotayamoku','Thotayamoku', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thultwane','Thultwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thulwe','Thulwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Thusong','Thusong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tigane','Tigane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tiokweng','Tiokweng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tladistat','Tladistat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlakaming','Tlakaming', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlapeng','Tlapeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlaping','Tlaping', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlaseng','Tlaseng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlhakajeng','Tlhakajeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlhakgameng','Tlhakgameng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlhakmeng','Tlhakmeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tlhatlhaganyane','Tlhatlhaganyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tokolwane','Tokolwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tornado','Tornado', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Torrington','Torrington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tosca','Tosca', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tra Blanca','Tra Blanca', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trassievlakte','Trassievlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Trom','Trom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsaelengwe','Tsaelengwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsailingwe','Tsailingwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsamarose','Tsamarose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsamaros','Tsamaros', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsechou','Tsechou', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsechu','Tsechu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tselaengwe','Tselaengwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tseng','Tseng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsenin','Tsenin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsêtsê','Tsêtsê', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshaneng','Tshaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshetsho','Tshetsho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshetshu','Tshetshu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshetshwana','Tshetshwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshidilamolomo','Tshidilamolomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshoupane','Tshoupane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshunyane','Tshunyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshwara','Tshwara', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tshwee','Tshwee', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsilwana','Tsilwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsimolomo','Tsimolomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsineng-Kop','Tsineng-Kop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsineng','Tsineng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsitsing','Tsitsing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tsoe','Tsoe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tswaaneng','Tswaaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tswedintlhe','Tswedintlhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tuhutsang','Tuhutsang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tumaskop','Tumaskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Turfvlakte','Turfvlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tweed','Tweed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tweelingspan','Tweelingspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Twycross','Twycross', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Tygerfontein','Tygerfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitkoms','Uitkoms', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitkyk','Uitkyk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Uitlanderskraal','Uitlanderskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Utsili','Utsili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalboschhoek','Vaalboschhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalpan','Vaalpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaalplaats','Vaalplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaal Reefs','Vaal Reefs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vaal Reef','Vaal Reef', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vanwykshuis','Vanwykshuis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ventersdorp','Ventersdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Verdwaal','Verdwaal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vergeleë','Vergeleë', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vergelen','Vergelen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vermaas','Vermaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vicedale','Vicedale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Viera','Viera', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakfontein','Vlakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakpan','Vlakpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vlakplaats','Vlakplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vorstershoop','Vorstershoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vrede','Vrede', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vrisgewaagd','Vrisgewaagd', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vryburg','Vryburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vrygees','Vrygees', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vrywillig','Vrywillig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Vyfhoek','Vyfhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Washington','Washington', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Water-fouché','Water-fouché', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khibitswane','Khibitswane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khudu','Khudu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khudunkgwane','Khudunkgwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khuma','Khuma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khunkwe','Khunkwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khunwana','Khunwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kibikwe','Kibikwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kibitlwe','Kibitlwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kierserville','Kierserville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kikafela','Kikafela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kikahela','Kikahela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kirstonia','Kirstonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaarkom','Klaarkom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klaarstroom','Klaarstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kleinchwaing','Kleinchwaing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Corsham','Klein-Corsham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Harrow','Klein Harrow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein Tsamarose','Klein Tsamarose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klein-Tswaing','Klein-Tswaing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klerksdorp','Klerksdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kliniek','Kliniek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdrif','Klipdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdrif Nedersetting','Klipdrif Nedersetting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipdrif Settlement','Klipdrif Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipfontein','Klipfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipgat','Klipgat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klippan','Klippan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipplaatdrif','Klipplaatdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Klipplaatdrift','Klipplaatdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kluitfontein','Kluitfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koboga','Koboga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koedoesfontein','Koedoesfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koedoespoort','Koedoespoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kogorwane','Kogorwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kokomeng','Kokomeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kokonye','Kokonye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kokosi','Kokosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kolobeng','Kolobeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kolofane','Kolofane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Konke','Konke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kopela','Kopela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kopella','Kopella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kophou','Kophou', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kosmos','Kosmos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Koster','Koster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kraaipan','Kraaipan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Krokodilkraal','Krokodilkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kromkuil','Kromkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kroondal','Kroondal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruisfontein','Kruisfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kruissar','Kruissar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuam Mazeppa','Kuam Mazeppa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kubuga','Kubuga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kubuge','Kubuge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kubu','Kubu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kudunkgwane','Kudunkgwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuilenberg','Kuilenberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kuilenburg','Kuilenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kunana','Kunana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Bala','Kwa-Bala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Bojating','Kwa-Bojating', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Chaneng','Kwa-Chaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaDithakong','KwaDithakong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwaggafontein','Kwaggafontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wegdraai','Wegdraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welbedacht','Welbedacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weltevreden','Weltevreden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Welverdiend','Welverdiend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West Derby','West Derby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'West End','West End', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Westhuyzen','Westhuyzen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wevedeen','Wevedeen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wevedene','Wevedene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Weverdene','Weverdene', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Whitby','Whitby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilgeboomspruit','Wilgeboomspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilgeboom','Wilgeboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wilkoppies','Wilkoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winterveld Agricultural Settlement','Winterveld Agricultural Settlement', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Winterveld','Winterveld', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witfontein','Witfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witkleigat','Witkleigat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witpan','Witpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witpoort','Witpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witputs','Witputs', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Witrantjie','Witrantjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolmaransstad','Wolmaransstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wolmaranstad','Wolmaranstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wondermere','Wondermere', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Worthy','Worthy', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wydhoek','Wydhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Wykeham','Wykeham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ophir','Ophir', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Opraap','Opraap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oranje','Oranje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oraredi','Oraredi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Orkney','Orkney', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottosdal','Ottosdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ottoshoop','Ottoshoop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ou Thomas se Loop','Ou Thomas se Loop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Padstow','Padstow', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Palasane','Palasane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pampierstad','Pampierstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pampierstat','Pampierstat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pansdrif','Pansdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pansdrift','Pansdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pautlane','Pautlane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pelindaba','Pelindaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pembroke','Pembroke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pender','Pender', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Penryn','Penryn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Perth','Perth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phaposane','Phaposane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phepane','Phepane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phiring','Phiring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phitshane Molopo','Phitshane Molopo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phitshane','Phitshane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phokeng','Phokeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pholofolo','Pholofolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pholoholo','Pholoholo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phomolong','Phomolong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Photsaneng','Photsaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Phuting','Phuting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piet Plessis','Piet Plessis', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Piet se Bos','Piet se Bos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pilanesberg','Pilanesberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pilansberg','Pilansberg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pitsane','Pitsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pitsani','Pitsani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pitsedisulejang','Pitsedisulejang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pitsong','Pitsong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pomfret','Pomfret', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Luka','Kwa-Luka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMaile','KwaMaile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMakubung','KwaMakubung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMatikiring','KwaMatikiring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMmatlhwaela','KwaMmatlhwaela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMogwase','KwaMogwase', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaMudubung','KwaMudubung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaNonceba','KwaNonceba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaRaphiri','KwaRaphiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaRatsiepane','KwaRatsiepane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwarriekraal','Kwarriekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaSetlopo','KwaSetlopo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwa-Tlaseng','Kwa-Tlaseng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aapdraai','Aapdraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aasvogelboom','Aasvogelboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Abbey','Abbey', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Adderley','Adderley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ainslie','Ainslie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Akron','Akron', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alabama','Alabama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albanie','Albanie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Albert','Albert', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alettasrus','Alettasrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Alettasrust','Alettasrust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Algiers','Algiers', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Amalia','Amalia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Andalusia','Andalusia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ardath','Ardath', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ariston','Ariston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ashfield','Ashfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Assen','Assen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Athole','Athole', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Atlanta','Atlanta', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Austrey','Austrey', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avon','Avon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Avondster','Avondster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ayr','Ayr', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Babelegi','Babelegi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bahurutshe','Bahurutshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bailey Brith','Bailey Brith', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baillie Park','Baillie Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bailybrith','Bailybrith', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bakerville','Bakerville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bala','Bala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bankdrif','Bankdrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bantu Township','Bantu Township', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bapong','Bapong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baraseba','Baraseba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Baratiwa','Baratiwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bareki','Bareki', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barnaby','Barnaby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Barnet','Barnet', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bathobatho','Bathobatho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Battlemond','Battlemond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Battlemound','Battlemound', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bedwang','Bedwang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Beestekraal','Beestekraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bendell','Bendell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Berwick','Berwick', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Potchefstroom','Potchefstroom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Povall','Povall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Puaneng','Puaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Pudumong','Pudumong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Putfontein','Putfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Quest Mine','Quest Mine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rabokala','Rabokala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rabusula','Rabusula', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Radia Congwa','Radia Congwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Raghas','Raghas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ralitsalibe','Ralitsalibe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramabesa','Ramabesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramakoks','Ramakoks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramakokstad','Ramakokstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramala','Ramala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramatale','Ramatale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramokabati','Ramokabati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramokikwana','Ramokikwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramokokstad','Ramokokstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramolapong','Ramolapong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ramosibitswana','Ramosibitswana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rankelenyane','Rankelenyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rathipa','Rathipa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ratsegae','Ratsegae', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Raubenheim','Raubenheim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Redbarn','Redbarn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reebokfontein Wes','Reebokfontein Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Reivilo','Reivilo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Renostervlei','Renostervlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietfontein','Rietfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bethanie','Bethanie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bethel','Bethel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bewley','Bewley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bierkraal','Bierkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesiesvle','Biesiesvle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesiesvlei','Biesiesvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Biesjesvlei','Biesjesvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bloemhof','Bloemhof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bodenstein','Bodenstein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bodibe','Bodibe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boekenhoutfontein','Boekenhoutfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boetrand','Boetrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boetsap','Boetsap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boikhutso','Boikhutso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boitumelong','Boitumelong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bojalapotsane','Bojalapotsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bojating','Bojating', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bokkraal','Bokkraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bokkraal Lead Mine','Bokkraal Lead Mine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bolelatlou','Bolelatlou', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bollantlokwe','Bollantlokwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonabona','Bonabona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bonmail','Bonmail', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boons','Boons', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Borakalalo','Borakalalo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boriteng','Boriteng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Borothamadi','Borothamadi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boschfroek','Boschfroek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boschpoort','Boschpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosdam','Bosdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosfontein','Bosfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Boskoppies','Boskoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosplaas','Bosplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bospoort','Bospoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bosra','Bosra', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bothetheletsa','Bothetheletsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bothethetletsa','Bothethetletsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bothithong','Bothithong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Botlhaolelo','Botlhaolelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Botshabelo','Botshabelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bowen','Bowen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bowen''s Store','Bowen''s Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakala','Brakala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakfontein','Brakfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brakkloof','Brakkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Breetsvlei','Breetsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brits','Brits', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Broedersput','Broedersput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Brooksby','Brooksby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buampsa','Buampsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsfontein','Buffelsfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelshoek','Buffelshoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelspruit','Buffelspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsvallei','Buffelsvallei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buffelsvlei','Buffelsvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bull Run','Bull Run', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Burgersdorp','Burgersdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bushy Park','Bushy Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bute','Bute', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Buxton','Buxton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Bylfontein','Bylfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cahar','Cahar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Camothibi','Camothibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Campden','Campden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cannahoek','Cannahoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Carlisonia','Carlisonia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cassel','Cassel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Charlesdale','Charlesdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chickenwood','Chickenwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Chinning','Chinning', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cholang','Cholang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Christiana','Christiana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clapham','Clapham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claudina','Claudina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Claudine','Claudine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Clyde','Clyde', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coetsersdam','Coetsersdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coetzersdam','Coetzersdam', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Coligny','Coligny', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colston','Colston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Colville','Colville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Conway','Conway', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Corsham','Corsham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cottonend','Cottonend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crafthole','Crafthole', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Crayfield','Crayfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Cronjes Boomen','Cronjes Boomen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Darnall','Darnall', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Davidskuil','Davidskuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dawlish','Dawlish', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deal','Deal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deelpan','Deelpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Delareyville','Delareyville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oceola','Oceola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Olverton','Olverton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ooseinde','Ooseinde', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'KwaTsitsing','KwaTsitsing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kwidi','Kwidi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laaspomp','Laaspomp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Labera','Labera', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Laxey','Laxey', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lead Mine','Lead Mine', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lebaleng','Lebaleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leboneng','Leboneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lebonkeng','Lebonkeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lebotlwane','Lebotlwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ledig','Ledig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeds','Leeds', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeudoringstad','Leeudoringstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeudrif','Leeudrif', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeukop','Leeukop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeukraal','Leeukraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwdoornsstad','Leeuwdoornsstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwdoornstad','Leeuwdoornstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwdrift','Leeuwdrift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Leeuwkuil','Leeuwkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lefaragatlhe','Lefaragatlhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Legogolwe','Legogolwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Legonyane','Legonyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lejakane','Lejakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekgophung','Lekgophung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekkerrus','Lekkerrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekubu','Lekubu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lekutung','Lekutung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lenatong','Lenatong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lengwelenowe','Lengwelenowe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lenotong','Lenotong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lerulaneng','Lerulaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lesetlheng','Lesetlheng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lesobeng','Lesobeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lesung','Lesung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lethakeng','Lethakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lethola','Lethola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Letsapa','Letsapa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lichtenburg','Lichtenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Linokana','Linokana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Linopeng','Linopeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Linopen','Linopen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Liversedge','Liversedge', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lobatieng','Lobatieng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lobotane','Lobotane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lobutsane','Lobutsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logabate','Logabate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logabati','Logabati', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logagane','Logagane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logaganeng','Logaganeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logageng','Logageng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logaging','Logaging', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logaring','Logaring', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logobate Location','Logobate Location', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Logobate','Logobate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lokaleng','Lokaleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lokammona','Lokammona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lokapane','Lokapane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lokihakane','Lokihakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lokung','Lokung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lone Star Texas','Lone Star Texas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Longaneng','Longaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Longhirst','Longhirst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Longhurst','Longhurst', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loopeng','Loopeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lophalaphala','Lophalaphala', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Losasaneno','Losasaneno', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Losmytjerrie','Losmytjerrie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lothiakane','Lothiakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lothlakane','Lothlakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lothlakeng','Lothlakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lothlaken','Lothlaken', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotihakeng','Lotihakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlaken','Lotlaken', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlakin','Lotlakin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlapa','Lotlapa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlhakane','Lotlhakane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlhakeng','Lotlhakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lotlhogori','Lotlhogori', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Loubsersrus','Loubsersrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louisdal','Louisdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Louwna','Louwna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lower Mayeakgoro','Lower Mayeakgoro', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Luka','Luka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lurie','Lurie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Lutlake','Lutlake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maanwane','Maanwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabaalstad','Mabaalstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabatho','Mabatho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabele-a-podi','Mabele-a-podi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabeskraal','Mabeskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabieskraal','Mabieskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabitse','Mabitse', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maboloko','Maboloko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabone','Mabone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mabule','Mabule', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madabana','Madabana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madeakham','Madeakham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madepelesa','Madepelesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madiakgama','Madiakgama', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madiba','Madiba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madibe','Madibe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madibeng','Madibeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madibogo','Madibogo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madikwe','Madikwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madimola Church','Madimola Church', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madimola','Madimola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madingwane','Madingwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madinonyane','Madinonyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madinyane','Madinyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madipelesa','Madipelesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madithoke','Madithoke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Madutle','Madutle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maeng','Maeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maer Jan','Maer Jan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mafeking','Mafeking', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mafikaneng','Mafikaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mafikeng','Mafikeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magagaaphiri','Magagaaphiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magalane','Magalane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magazynskraal','Magazynskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magobe','Magobe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magobeng','Magobeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magogong','Magogong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magolaneng','Magolaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magonata','Magonata', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magong','Magong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Magwagwe','Magwagwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahukubu','Mahukubu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mahukubung','Mahukubung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maile','Maile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maipeeng','Maipeeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maipeing','Maipeing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maipenecke','Maipenecke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maipeng','Maipeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maipin','Maipin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Majaneng','Majaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Majeng','Majeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makadibeng','Makadibeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makalaneng','Makalaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makan','Makan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makapaanstad','Makapaanstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makapaanstat','Makapaanstat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makapanstad','Makapanstad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makarakong','Makarakong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgabetlwane','Makgabetlwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgakgane','Makgakgane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgaladi','Makgaladi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgobi''s Stad','Makgobi''s Stad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgobis Stadt','Makgobis Stadt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgobistad','Makgobistad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgope','Makgope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makgori','Makgori', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makokskraal','Makokskraal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makolokwe','Makolokwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makouspan','Makouspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makwassie','Makwassie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Makweleng','Makweleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malani Oog','Malani Oog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malapo Oog','Malapo Oog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malapo''s Oog','Malapo''s Oog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mallaphiri','Mallaphiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mallepoos Oog','Mallepoos Oog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malmanie','Malmanie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malmanie Oog','Malmanie Oog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Malmanioog','Malmanioog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maloka','Maloka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mammutla','Mammutla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamoetle','Mamoetle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamoetle Store','Mamoetle Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamontsane','Mamontsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamorato','Mamorato', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mamoratwe','Mamoratwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manaaneng','Manaaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manamakgoteng','Manamakgoteng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manamela','Manamela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manamolela','Manamolela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mankaipaya','Mankaipaya', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mankgekgetha','Mankgekgetha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manoana','Manoana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manoka','Manoka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manoko','Manoko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manokwane','Manokwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manonyana','Manonyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manonyane','Manonyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mansfield','Mansfield', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manthestad','Manthestad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mantsa','Mantsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mantsho','Mantsho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manwane','Manwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manyeding','Manyeding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Manyeding Store','Manyeding Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maokantsi','Maokantsi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maologane','Maologane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maoloqane','Maoloqane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapaputle','Mapaputle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapella','Mapella', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapetla','Mapetla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphephane','Maphephane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphiniki','Maphiniki', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maphoitsile','Maphoitsile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapitiki','Mapitiki', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapoch','Mapoch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mapoteng','Mapoteng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maputsane','Maputsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maquassi','Maquassi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marakana','Marakana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marapalalo','Marapalalo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'March','March', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mareetsane','Mareetsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maretlwana','Maretlwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maria-Moed','Maria-Moed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mariba','Mariba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marico-Wes','Marico-Wes', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marico West','Marico West', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maropeen','Maropeen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maropeng','Maropeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marotaneng','Marotaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marotobolo','Marotobolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marthasdal','Marthasdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Martor','Martor', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Marubiseng','Marubiseng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masamane','Masamane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masankong','Masankong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masekolane','Masekolane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maseru','Maseru', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masewu','Masewu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mashutlhe','Mashutlhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masibi','Masibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masilabeleng','Masilabeleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masilabetsane','Masilabetsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Masilibitsani','Masilibitsani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Massikier','Massikier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maswehatshe','Maswehatshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matemeng','Matemeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mathanthanyaneng','Mathanthanyaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mathibestad','Mathibestad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mathibestat','Mathibestat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mathopestat','Mathopestat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matila','Matila', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matile','Matile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlapein','Matlapein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlapeng','Matlapeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhabanenong','Matlhabanenong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhabaneung','Matlhabaneung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhabatlhaba','Matlhabatlhaba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhagame','Matlhagame', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhase','Matlhase', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matlhatlhale','Matlhatlhale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matloding','Matloding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matluetla','Matluetla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matolong','Matolong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matooster','Matooster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matrooster','Matrooster', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matsaneng','Matsaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matshaneng','Matshaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matsiapane','Matsiapane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Matuye','Matuye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Maumong','Maumong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mayeakgoro','Mayeakgoro', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mazista','Mazista', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mbabatho','Mbabatho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mecwetsaneng','Mecwetsaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mecwetsaning','Mecwetsaning', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Medunsa','Medunsa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meganeng','Meganeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melorane','Melorane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Melrose','Melrose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Merindol','Merindol', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mesa','Mesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Meseg','Meseg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Metsemantsi','Metsemantsi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Metsetoro','Metsetoro', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Metsikgetlane','Metsikgetlane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Metswetsaneng','Metswetsaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mezeg','Mezeg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hellsgate','Hellsgate', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hermansburg','Hermansburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hertzog','Hertzog', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heystekrand','Heystekrand', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hobb''s Hope','Hobb''s Hope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Hoekfontein','Hoekfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Holbeck','Holbeck', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Howden','Howden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Huhudi','Huhudi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Husfeldt','Husfeldt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ilkley','Ilkley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ilsley','Ilsley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Iowa','Iowa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Itireleng','Itireleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Itsoseng','Itsoseng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jacksonstuin','Jacksonstuin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jacobsdal','Jacobsdal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jakkalsdraai','Jakkalsdraai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jakkalsput','Jakkalsput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jan Kempdorp','Jan Kempdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jan Kemp','Jan Kemp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jan Masibi','Jan Masibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jericho','Jericho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jerico','Jerico', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jonkersrus','Jonkersrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Jouberton','Jouberton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Justiesia','Justiesia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Justitia','Justitia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kabayatlhose','Kabayatlhose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kagamayasha','Kagamayasha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kagiso','Kagiso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kakoje','Kakoje', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kakoshong','Kakoshong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkheuvel','Kalkheuvel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kalkpan','Kalkpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kamden','Kamden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kana','Kana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kanana','Kanana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kang','Kang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kankuru','Kankuru', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kapsteel','Kapsteel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kayakulu','Kayakulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keang','Keang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keatuka','Keatuka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keeley''s Ranch','Keeley''s Ranch', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keisersrus','Keisersrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keizers Rust','Keizers Rust', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kekana','Kekana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kelokilwe','Kelokilwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kelso','Kelso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgabalatsane','Kgabalatsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgabaltsane','Kgabaltsane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgamatha','Kgamatha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kganong','Kganong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kganwane','Kganwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgarathlosi','Kgarathlosi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgareyatlhose','Kgareyatlhose', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgobadi','Kgobadi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgokgojane','Kgokgojane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgokgole','Kgokgole', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgomohute','Kgomohute', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgomo-Kgomo','Kgomo-Kgomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgomotso','Kgomotso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgoroya Ga-Tshekedi','Kgoroya Ga-Tshekedi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Kgwedimopitlo','Kgwedimopitlo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khabetlwane','Khabetlwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khaukhwe','Khaukhwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khavakhulu','Khavakhulu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khibes Village','Khibes Village', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rietvlei','Rietvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Riet Vley','Riet Vley', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rodeon','Rodeon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roelofs Kamp','Roelofs Kamp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodegrond','Roodegrond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roodekuil','Roodekuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooibank','Rooibank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooigrond','Rooigrond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooikoppies','Rooikoppies', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooipoort','Rooipoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiput','Rooiput', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rooiwal','Rooiwal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roosendal','Roosendal', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roosplaas','Roosplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roosplaats','Roosplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Roostplaats','Roostplaats', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rowell','Rowell', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rugby','Rugby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruigtesloo','Ruigtesloo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruitjesvlakte','Ruitjesvlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rusfontein','Rusfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rustenburg','Rustenburg', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruthven','Ruthven', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rykaartspos','Rykaartspos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rykaartspost','Rykaartspost', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ryno','Ryno', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saamwerk','Saamwerk', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sacville','Sacville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sakhrol','Sakhrol', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sakutsana','Sakutsana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sakutswane','Sakutswane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Salaneng','Salaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saleng','Saleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandfontein','Sandfontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sandpoortjie','Sandpoortjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sannieshof','Sannieshof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saracen','Saracen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sark','Sark', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sasane','Sasane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Saulspoort','Saulspoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scattergood','Scattergood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Scatter','Scatter', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoemansville','Schoemansville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoemanville','Schoemanville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schoongezicht','Schoongezicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schweizer-Reineke','Schweizer-Reineke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Schweizer-Reneke','Schweizer-Reneke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seane','Seane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seatlane','Seatlane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedebin','Sedebin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedibeng','Sedibeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedilamolamo','Sedilamolamo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedilamolomo','Sedilamolomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sedu Kung','Sedu Kung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Segwaelane','Segwaelane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Segwaneng','Segwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sehuba','Sehuba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sekampaneng','Sekampaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sekgwasankwe','Sekgwasankwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sekhing','Sekhing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Selepe','Selepe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Selobane','Selobane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sengoma','Sengoma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seoding','Seoding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seodin','Seodin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seolong','Seolong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sephai','Sephai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Seringa Stad','Seringa Stad', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Serutube','Serutube', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sesibitswe','Sesibitswe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setabeng','Setabeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setete','Setete', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setlagode','Setlagode', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setlagodi','Setlagodi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setlagoli','Setlagoli', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setlago','Setlago', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setlhakeng','Setlhakeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setshwatshwaneng','Setshwatshwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Setuat','Setuat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Severn','Severn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shakung','Shakung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shaleng','Shaleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shippards Gift','Shippards Gift', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shipton','Shipton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shoongezicht','Shoongezicht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Shushulin','Shushulin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sias','Sias', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Siberia','Siberia', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sikwane','Sikwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silakatskop','Silakatskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silkaatskop','Silkaatskop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Silveroaks','Silveroaks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Skitter','Skitter', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slagboom','Slagboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slough','Slough', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Slurry','Slurry', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Smauswane','Smauswane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Snymansvlei','Snymansvlei', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Sonop','Sonop', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutbos','Soutbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Southey','Southey', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Soutpomp','Soutpomp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Springbokpan','Springbokpan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Migdol','Migdol', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Millvale','Millvale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mimosa','Mimosa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mimosa Park Inn','Mimosa Park Inn', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mimosa Park','Mimosa Park', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Minto','Minto', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Minto No. 2','Minto No. 2', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Minto Number Two','Minto Number Two', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmabatho','Mmabatho', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmaipitlwane','Mmaipitlwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmakaunyana','Mmakaunyana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmakaunyane','Mmakaunyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmanawane','Mmanawane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmantserre','Mmantserre', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmaphuti','Mmaphuti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmasebudule','Mmasebudule', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmatau','Mmatau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmatoro','Mmatoro', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmolayatshephe','Mmolayatshephe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmopyane','Mmopyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmorogong','Mmorogong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmukubyane','Mmukubyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mmunyaneng','Mmunyaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modiane','Modiane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modikwe','Modikwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modimola','Modimola', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modimong','Modimong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modimung','Modimung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Modiselele','Modiselele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moed','Moed', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moedvernier','Moedvernier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moedwil','Moedwil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mofufutso','Mofufutso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogalaneng','Mogalaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moghalanen','Moghalanen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogoditshane','Mogoditshane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogogelo','Mogogelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogohlwaneng','Mogohlwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogono','Mogono', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogononong','Mogononong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogosane','Mogosane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mogwase','Mogwase', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mohuti','Mohuti', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moiletswane','Moiletswane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokalamosesane','Mokalamosesane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokaleng','Mokaleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokalwamakgoa','Mokalwamakgoa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokasa II','Mokasa II', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokasa I','Mokasa I', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokgalong','Mokgalong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokgalwane','Mokgalwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokgalwaneng','Mokgalwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokgareng','Mokgareng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokgoatsi','Mokgoatsi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokobisi','Mokobisi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mokope','Mokope', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molale','Molale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molatedi','Molatedi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molatswaneng','Molatswaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moletsamongwe','Moletsamongwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molewane','Molewane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mololema','Mololema', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molomowapitsana','Molomowapitsana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molopo River','Molopo River', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moloporivier','Moloporivier', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Molorwe','Molorwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monetsi','Monetsi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monnakato','Monnakato', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mononono','Mononono', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Montshiwa','Montshiwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Monyenyane','Monyenyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooibank','Mooibank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooifontein','Mooifontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooipan','Mooipan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mookaothupa','Mookaothupa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mooke','Mooke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moolagwane','Moolagwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morna','Morna', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morokwa','Morokwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morokwaneng','Morokwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morokweng','Morokweng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morokwen','Morokwen', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morotowontshe','Morotowontshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morpeth','Morpeth', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morula Sun','Morula Sun', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Morwatshetlha','Morwatshetlha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mosakong','Mosakong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moshoso','Moshoso', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mositlane','Mositlane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mosito','Mosito', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moswana','Moswana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motchelie','Motchelie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mothanthanyaneng','Mothanthanyaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mothloeng','Mothloeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mothong','Mothong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motito','Motito', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motlhabe','Motlhabe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motlhokaditse','Motlhokaditse', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motshikiri','Motshikiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motswedi','Motswedi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Motsweding','Motsweding', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moubana','Moubana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Moumong','Moumong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mphonyoke','Mphonyoke', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mudubung','Mudubung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Museva','Museva', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mushwutlhe','Mushwutlhe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Naauwpoort','Naauwpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nchaning','Nchaning', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nchanin','Nchanin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Neira','Neira', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nevin','Nevin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niemeer','Niemeer', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nietverdiend','Nietverdiend', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Niks','Niks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkajaneng','Nkajaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkogolwe','Nkogolwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkwedumang','Nkwedumang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nonceba','Nonceba', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nooitgedacht','Nooitgedacht', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Norlim','Norlim', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Noupoort','Noupoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntsana-le-Metsing','Ntsana-le-Metsing', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntsopile','Ntsopile', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntswanahatshe','Ntswanahatshe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntswaneng','Ntswaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntswelengwe','Ntswelengwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ntsweng','Ntsweng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nuwe Eersterus','Nuwe Eersterus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Deorham','Deorham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Derby','Derby', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Derdepoort','Derdepoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dertig','Dertig', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Derwent','Derwent', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Detsiping','Detsiping', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Devonlea','Devonlea', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dewar','Dewar', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'De Wildt','De Wildt', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diamantkuil','Diamantkuil', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diaz','Diaz', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Die Putte','Die Putte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dihatshwe','Dihatshwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dijwe','Dijwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikebu','Dikebu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikgatlon','Dikgatlon', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikgophaneng','Dikgophaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikgwaneng','Dikgwaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikhuting','Dikhuting', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dikolobeng','Dikolobeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dilopye','Dilopye', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dinake','Dinake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dinokana','Dinokana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dinokaneng','Dinokaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dinopeng','Dinopeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dipetleloana','Dipetleloana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dipompong','Dipompong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Diretsaneng','Diretsaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dirkiesrus','Dirkiesrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dirojaneng','Dirojaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dirubi','Dirubi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Disaneng','Disaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dithakong','Dithakong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditlharepaneng','Ditlharepaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditlolamarumo','Ditlolamarumo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditshilabeleng','Ditshilabeleng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditshipeng','Ditshipeng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditshiping','Ditshiping', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ditshoswaneng','Ditshoswaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Djdibaneng','Djdibaneng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dominionville','Dominionville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornhoek','Doornhoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornlaagte','Doornlaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doornspruit','Doornspruit', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doringkloof','Doringkloof', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Doringpoort','Doringpoort', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dovesdale','Dovesdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drieangle','Drieangle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driefontein','Driefontein', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driehoek','Driehoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Driestat','Driestat', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Drillhole','Drillhole', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Duikersbos','Duikersbos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dupperspos','Dupperspos', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Dutton','Dutton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'East End','East End', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eastleigh','Eastleigh', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Egham','Egham', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Egham Estates','Egham Estates', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elandsputte','Elandsputte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Elston','Elston', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Enselsrus','Enselsrus', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erfplaas','Erfplaas', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Erma','Erma', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eskdale','Eskdale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Esperanza','Esperanza', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eureka','Eureka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Everton','Everton', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ewbank','Ewbank', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ewbanks','Ewbanks', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ewbank''s Store','Ewbank''s Store', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ewbankswinkel','Ewbankswinkel', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fafung','Fafung', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Fochville','Fochville', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Freedom','Freedom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Dibove','Ga-Dibove', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gadikame','Gadikame', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Disane','Ga-Disane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Habedi','Ga-Habedi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Honyane','Ga-Honyane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Huhuwe','Ga-Huhuwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Jantjie','Ga-Jantjie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Kgale','Ga-Kgale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Kgwe','Ga-Kgwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Koi-Koi','Ga-Koi-Koi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Galisili','Galisili', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Lotlhare','Ga-Lotlhare', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Lotolo','Ga-Lotolo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Luka','Ga-Luka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Madubu','Ga-Madubu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gamagaabue','Gamagaabue', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Makgatle','Ga-Makgatle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Maloka','Ga-Maloka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mamebe','Ga-Mamebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Masepa','Ga-Masepa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Masilela','Ga-Masilela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mathako','Ga-Mathako', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Matshogo','Ga-Matshogo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Modikwe','Ga-Modikwe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Moeka','Ga-Moeka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mogopa','Ga-Mogopa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Moheele','Ga-Moheele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mokake','Ga-Mokake', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mokgatlha','Ga-Mokgatlha', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mokomela','Ga-Mokomela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mokone','Ga-Mokone', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gamollo','Gamollo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mopedi','Ga-Mopedi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Morona','Ga-Morona', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Moseki','Ga-Moseki', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Mothibi','Ga-Mothibi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motlaila','Ga-Motlaila', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motlatla','Ga-Motlatla', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motle','Ga-Motle', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motlhware','Ga-Motlhware', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motlogelwa','Ga-Motlogelwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motsage','Ga-Motsage', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motsamai','Ga-Motsamai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Motsoko','Ga-Motsoko', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ganap','Ganap', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ganghae','Ganghae', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gankwane','Gankwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gannahoek','Gannahoek', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gannalaagte','Gannalaagte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ntatelang','Ga-Ntatelang', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ganyesa','Ganyesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Pitiela','Ga-Pitiela', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Popo','Ga-Popo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ralebelwane','Ga-Ralebelwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ramatale','Ga-Ramatale', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ramodingwana','Ga-Ramodingwana', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ramoga','Ga-Ramoga', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ramokoka','Ga-Ramokoka', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Ramotsekwane','Ga-Ramotsekwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Rankuwa','Ga-Rankuwa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garantlapane','Garantlapane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Raphiri','Ga-Raphiri', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Rasai','Ga-Rasai', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Garatau','Garatau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gariele','Gariele', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Sebolao','Ga-Sebolao', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Sehubane','Ga-Sehubane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Sehunelo','Ga-Sehunelo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Sese','Ga-Sese', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Skawu','Ga-Skawu', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Suping','Ga-Suping', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Tatisi','Ga-Tatisi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Thameng','Ga-Thameng', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Tipe','Ga-Tipe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ga-Titi','Ga-Titi', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gatlalakgomo','Gatlalakgomo', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gatong','Gatong', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geelblom','Geelblom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geelboom','Geelboom', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gelukspan','Gelukspan', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gemsbokvlakte','Gemsbokvlakte', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genesa','Genesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Genyesa','Genyesa', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gerdau','Gerdau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Geysdorp','Geysdorp', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glaudina','Glaudina', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glen Red','Glen Red', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Glimlag','Glimlag', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedbegin','Goedbegin', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedgevonden','Goedgevonden', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goedgevond','Goedgevond', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goodwood','Goodwood', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goorathebe','Goorathebe', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gopane','Gopane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gopanie','Gopanie', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gopani','Gopani', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Go-Ralebelwane','Go-Ralebelwane', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Goratau','Goratau', @activeid, @lastupdateaccountid, GETDATE());
INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Gosport','Gosport', @activeid, @lastupdateaccountid, GETDATE());
