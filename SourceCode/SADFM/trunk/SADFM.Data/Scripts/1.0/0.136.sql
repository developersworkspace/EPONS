DECLARE @StatusParentID  uniqueidentifier 
DECLARE @AccountId uniqueidentifier
DECLARE @StatusID uniqueidentifier
DECLARE @FunderListId uniqueidentifier

Select @StatusParentID = ListItemId from ListItem Where ParentID IS NULL And Name = 'Status'
Select @StatusID = ListItemId From ListItem Where ParentID = @StatusParentID AND Name = 'Active'
Select @AccountId = AccountId From Account Where Username = 'Yoda' AND EmailAddress = 'info@returntrue.co.za'

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Metropolitan','Metropolitan', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='Funders' AND ParentId IS NULL;

INSERT
INTO	ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	ListItemId,'Discovery','Discovery', @StatusID, getdate(), @AccountId
FROM	ListItem
WHERE	Name ='Funders' AND ParentId IS NULL;


INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Bankmed';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Bp Medical Aid Society';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Bp Southern Africa Medical';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Engen Medical Benefit Fund';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Fishing Industry';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'GEMS';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Golden Arrow Employees';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Imperial Group Medical Scheme (Imperialmed)';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Medipos Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Methealth';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Methealth Openplan Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Metropolitan Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Momentum Health';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Pg Group Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Pick & Pay Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Polmed Medical Scheme';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Protector Health';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Motohealth';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'South African Breweries';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Transmed Medical Fund';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Metropolitan' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Wooltru Healthcare Fund';

INSERT INTO [FunderScheme] (FunderId,SchemeId) SELECT B.ListItemId,D.ListItemId
  FROM [ListItem] AS A JOIN [ListItem] AS B ON A.Name = 'Funders' AND B.ParentId = A.ListItemId AND B.Name = 'Discovery' JOIN [ListItem] AS C ON C.Name = 'MedicalScheme' JOIN [ListItem] AS D ON D.Name = 'Discovery Health Medical Scheme';
