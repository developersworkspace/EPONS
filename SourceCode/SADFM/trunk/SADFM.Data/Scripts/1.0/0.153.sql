DECLARE
 @provinceid uniqueidentifier,
 @countryid uniqueidentifier,
 @activeid uniqueidentifier,
 @lastupdateaccountid uniqueidentifier

SELECT TOP 1 @lastupdateaccountid = AccountId FROM Account ORDER BY DateCreatedTimestamp

SELECT @countryid = li_SouthAfrica.ListItemId, @activeid = li_Active.ListItemId
FROM [ListItem] as li_Country 
  INNER JOIN [ListItem] as li_SouthAfrica ON (li_Country.Name = 'Country' AND li_SouthAfrica.ParentId = li_Country.ListItemId AND li_SouthAfrica.Name = 'Namibia')
  INNER JOIN [ListItem] as li_Status ON (li_Status.Name = 'Status')
  INNER JOIN [ListItem] as li_Active ON (li_Active.ParentId = li_Status.ListItemId AND li_Active.Name = 'Active')

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Caprivi','Caprivi', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Caprivi';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Katima Mulilo','Katima Mulilo', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Erongo','Erongo', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Erongo';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Walvis Bay','Walvis Bay', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Swakopmund','Swakopmund', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Arandis','Arandis', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karibib','Karibib', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Usakos','Usakos', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Hardap','Hardap', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Hardap';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rehoboth','Rehoboth', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Aranos','Aranos', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Mariental','Mariental', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Karas','Karas', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Karas';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Keetmanshoop','Keetmanshoop', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Karasburg','Karasburg', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Luderitz','Luderitz', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oranjemund','Oranjemund', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Kavango','Kavango', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Kavango';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Rundu','Rundu', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Nkurenkuru','Nkurenkuru', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Khomas','Khomas', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Khomas';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Windhoek','Windhoek', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Kunene','Kunene', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Kunene';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Khorixas','Khorixas', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Opuwo','Opuwo', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Ohangwena','Ohangwena', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Ohangwena';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Eenhana','Eenhana', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Heleo Nafidi','Heleo Nafidi', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oshikango','Oshikango', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Omusati','Omusati', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Omusati';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Okahoa','Okahoa', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Outapi','Outapi', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oshikuku','Oshikuku', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ruacana','Ruacana', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Oshana','Oshana', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Oshana';


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Oshakati','Oshakati', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ondangwa','Ondangwa', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Ongwediva','Ongwediva', @activeid, @lastupdateaccountid, GETDATE());



INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Oshikoto','Oshikoto', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Oshikoto';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Omuthiya','Omuthiya', @activeid, @lastupdateaccountid, GETDATE());

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp]) VALUES (@countryid, 'Otjozondjupa','Otjozondjupa', @activeid, @lastupdateaccountid, GETDATE());
SELECT @provinceid = ListItemId FROM ListItem WHERE ParentId = @countryid AND Name = 'Otjozondjupa';

INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Otjiwarongo','Otjiwarongo', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Okahandja','Okahandja', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Okakarara','Okakarara', @activeid, @lastupdateaccountid, GETDATE());


INSERT INTO [ListItem] ([ParentId],[Name],[Description],[StatusId],[LastUpdateAccountId],[LastUpdateTimestamp])
VALUES (@provinceid, 'Otavi','Otavi', @activeid, @lastupdateaccountid, GETDATE());
