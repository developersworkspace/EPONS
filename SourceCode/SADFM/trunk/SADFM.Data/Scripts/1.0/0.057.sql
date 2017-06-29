INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Private Patient', 'Private Patient',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Aacmed Medical Scheme', 'Aacmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Abi Medical Scheme', 'Abi Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Aeci Medical Aid Society', 'Aeci Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Afrox Medical Aid Society', 'Afrox Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Air Health International', 'Air Health International',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Allcare Chamber Medical Aid Scheme', 'Allcare Chamber Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'AIMS - Alliance International Medical Services', 'AIMS - Alliance International Medical Services',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Alliance-Midmed Medical Scheme', 'Alliance-Midmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Alpha Medical Scheme', 'Alpha Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Altron Medical Aid Scheme', 'Altron Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Ammosal Benefit Society', 'Ammosal Benefit Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Anglo American Corporation', 'Anglo American Corporation',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Anglogold Medical Scheme', 'Anglogold Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Anglovaal Group Medical Scheme', 'Anglovaal Group Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Aranda Sick Benefit Fund', 'Aranda Sick Benefit Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Aumed Medical Scheme', 'Aumed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'AutoMed', 'AutoMed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bankmed', 'Bankmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bankmed - Namibie', 'Bankmed - Namibie',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Barlow Medical Scheme', 'Barlow Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Beland Medical Aid Society', 'Beland Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Benefit Fund', 'Benefit Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Benmed', 'Benmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bepmed', 'Bepmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bestmed', 'Bestmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Billmed Medical Scheme', 'Billmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bimaf - Building Industry Medical Aid Fund', 'Bimaf - Building Industry Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'BHP Billiton SA Medical', 'BHP Billiton SA Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bmw Employees Medical Aid Society', 'Bmw Employees Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bonitas Medical Fund', 'Bonitas Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Botswana Public Officers medical aid', 'Botswana Public Officers medical aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Botswana Medical Aid', 'Botswana Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bp Medical Aid Society', 'Bp Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Bp Southern Africa Medical', 'Bp Southern Africa Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'BUPA', 'BUPA',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Camac Medical Aid Fund', 'Camac Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'CAMAF', 'CAMAF',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Cape Medical Plan', 'Cape Medical Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Caremed Medical Scheme', 'Caremed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Cawmed Medical Scheme', 'Cawmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Cgu Medical Aid Scheme', 'Cgu Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Chamber Of Mines Medical Aid Society', 'Chamber Of Mines Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Chartered Accountants Medical Aid Society', 'Chartered Accountants Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Cimas', 'Cimas',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Clicks Group Medical Scheme', 'Clicks Group Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'COID (WCC)', 'COID (WCC)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Commed', 'Commed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Commercial & Industrial Medical Aid Society', 'Commercial & Industrial Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Community Medical Aid Scheme', 'Community Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Compcare Medical Aid', 'Compcare Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Da Gama Medical Scheme', 'Da Gama Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Dcmed', 'Dcmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'De Beers Benefit Society', 'De Beers Benefit Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Decision Health', 'Decision Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Discovery Health Medical Scheme', 'Discovery Health Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Distribution Society (Meds)', 'Distribution Society (Meds)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Edcon Medical Aid Scheme', 'Edcon Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Ellerine Holdings Medical Aid Society', 'Ellerine Holdings Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Ellerines', 'Ellerines',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Engen Medical Benefit Fund', 'Engen Medical Benefit Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Erica Medical Aid Society', 'Erica Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Eyethumed Medical Scheme', 'Eyethumed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Fedsure', 'Fedsure',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Fedsure Health (Fedhealth)', 'Fedsure Health (Fedhealth)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Fem', 'Fem',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Fishing Industry', 'Fishing Industry',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Foodworkers'' Medical Benefit Fund', 'Foodworkers'' Medical Benefit Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Foschini Group Medical Aid Scheme', 'Foschini Group Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Free State Medical Scheme', 'Free State Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Furnmed', 'Furnmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'G5med', 'G5med',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'GEMS', 'GEMS',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Genesis Medical Scheme', 'Genesis Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Gen-Health Medical Scheme', 'Gen-Health Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Glencore Medical Scheme', 'Glencore Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Globalcare', 'Globalcare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Global Health', 'Global Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Global Access Health Network', 'Global Access Health Network',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Golden Arrow Employees', 'Golden Arrow Employees',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Goldfields Medical Aid', 'Goldfields Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Goldmed', 'Goldmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Good Hope Medical Aid Society', 'Good Hope Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Grintek Electronics Medical Aid Scheme', 'Grintek Electronics Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Harmony Healthcare Services', 'Harmony Healthcare Services',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Health & Accident Group', 'Health & Accident Group',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Haggie Medical Scheme', 'Haggie Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Highveld Medical Scheme', 'Highveld Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'HOLCIM Medical Scheme', 'HOLCIM Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Hosmed Medical Aid Scheme', 'Hosmed Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Hospiserv', 'Hospiserv',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Ibm South Africa Medical Society', 'Ibm South Africa Medical Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Impala Medical Plan', 'Impala Medical Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Imperial Group Medical Scheme (Imperialmed)', 'Imperial Group Medical Scheme (Imperialmed)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Independent Newspapers Medical Aid Society', 'Independent Newspapers Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Ingwe Health Plan', 'Ingwe Health Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'International SOS', 'International SOS',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Insurance/Medical aid', 'Insurance/Medical aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Jci Medical Scheme', 'Jci Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Jomed Medical Scheme', 'Jomed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'KeyHealth Medical Scheme', 'KeyHealth Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Keyhealth', 'Keyhealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Klerksdorp Medical Benefit Society (Kdm)', 'Klerksdorp Medical Benefit Society (Kdm)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Kopano Healthcare', 'Kopano Healthcare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Kpmg Medical Aid Society', 'Kpmg Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Kwazulu Natal Medical Aid Scheme', 'Kwazulu Natal Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Lamaf Medical Scheme', 'Lamaf Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'L A Health (Discovery)', 'L A Health (Discovery)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Libcare Medical Scheme', 'Libcare Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Liberty Life', 'Liberty Life',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Lifemed Medical Scheme', 'Lifemed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Makoti Medical Fund', 'Makoti Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Malcor Medical Aid Scheme', 'Malcor Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Massmart Health Plan', 'Massmart Health Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'MBMed', 'MBMed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medcor', 'Medcor',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medical Benefit Fund', 'Medical Benefit Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medical Expenses Medical Fund', 'Medical Expenses Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medicover 2000', 'Medicover 2000',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medihelp', 'Medihelp',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medimed Mediese Skema', 'Medimed Mediese Skema',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medipos Medical Scheme', 'Medipos Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medisense Medical Scheme', 'Medisense Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medshield Medical Scheme', 'Medshield Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Medsure Medical Aid Scheme', 'Medsure Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Meridian Health', 'Meridian Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Methealth', 'Methealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Methealth Openplan Medical Scheme', 'Methealth Openplan Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Metrocare', 'Metrocare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Metropolitan Medical Scheme', 'Metropolitan Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'MHRM Clients', 'MHRM Clients',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Midcare', 'Midcare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Mimed', 'Mimed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Minemed Medical Scheme', 'Minemed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Moremed Medical Scheme', 'Moremed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Momentum Health', 'Momentum Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Msp Sizwe Medical Fund', 'Msp Sizwe Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Munimed', 'Munimed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Mutual & Federal Medical Aid Fund', 'Mutual & Federal Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Mxhealth', 'Mxhealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Myhealth', 'Myhealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Namibia Health Plan', 'Namibia Health Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nampak Group Medical Society', 'Nampak Group Medical Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Naspers Sick Fund', 'Naspers Sick Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nasionale Pers Siekefonds', 'Nasionale Pers Siekefonds',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Natalmed', 'Natalmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'National Independent Medical Aid Society', 'National Independent Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'National Medical Plan (Nmp)', 'National Medical Plan (Nmp)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nbc Medical Aid Society', 'Nbc Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nbs Group Medical Aid Fund', 'Nbs Group Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nedcor Medical Aid Scheme', 'Nedcor Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nedgroup', 'Nedgroup',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Netcare Medical Scheme (Nms)', 'Netcare Medical Scheme (Nms)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Nimas', 'Nimas',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Numed', 'Numed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Old Mutual', 'Old Mutual',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Old Mutual Staff Medical Aid Fund', 'Old Mutual Staff Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Omnihealth Medical Scheme', 'Omnihealth Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'OneCare', 'OneCare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Openplan', 'Openplan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Opmed', 'Opmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Horizon Medical Aid', 'Horizon Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Optimum Medical Scheme', 'Optimum Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Overseas Insurance Co', 'Overseas Insurance Co',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Oxygen Medical Plan', 'Oxygen Medical Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Parmed Medical Aid Scheme', 'Parmed Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pathfinder Medical Scheme', 'Pathfinder Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pg Bison Medical Aid Society', 'Pg Bison Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pg Group Medical Scheme', 'Pg Group Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pharos Medical Plan', 'Pharos Medical Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Phila Medical Scheme', 'Phila Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pick & Pay Medical Scheme', 'Pick & Pay Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Platinum Health Medical Scheme', 'Platinum Health Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Platmed', 'Platmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Polmed Medical Scheme', 'Polmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Polprismed', 'Polprismed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pretmed Scheme', 'Pretmed Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pretoria Muncipal Medical', 'Pretoria Muncipal Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Pro Sano Mediese Hulpskema', 'Pro Sano Mediese Hulpskema',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Profmed', 'Profmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'PROMEDIS', 'PROMEDIS',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Protea Medical Aid Society', 'Protea Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Protector Health', 'Protector Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Provia Medical Scheme', 'Provia Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Publiserve Healthcare', 'Publiserve Healthcare',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Universal Healthcare Administrators', 'Universal Healthcare Administrators',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Purehealth', 'Purehealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Qualsa', 'Qualsa',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Quantum Medical Aid Society', 'Quantum Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Road Accident Fund', 'Road Accident Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Rand Mutual Assurance', 'Rand Mutual Assurance',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Rand Water Medical Scheme', 'Rand Water Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Relyant Medical Scheme', 'Relyant Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Remedi Mediese Hulpskema', 'Remedi Mediese Hulpskema',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Resolution Health Medical', 'Resolution Health Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Retail Medical Aid', 'Retail Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'RU Med (Rhodes medical scheme)', 'RU Med (Rhodes medical scheme)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Saammed Mediese Skema', 'Saammed Mediese Skema',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sab Castellion Medical', 'Sab Castellion Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sabc Medical Scheme', 'Sabc Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sabcas Medical Scheme', 'Sabcas Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sabmas Medical Aid Society', 'Sabmas Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Saemas Medical Aid Society', 'Saemas Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Motohealth', 'Motohealth',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Samancor Health Plan', 'Samancor Health Plan',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Samwumed', 'Samwumed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sanlam Medical Aid Scheme', 'Sanlam Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sanmed', 'Sanmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sappi Medical Aid Scheme', 'Sappi Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sasolmed', 'Sasolmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sedmed', 'Sedmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Selfmed Medical Scheme', 'Selfmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Shoprite Medical Scheme', 'Shoprite Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Siemens Medical Scheme', 'Siemens Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sigma', 'Sigma',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sisonke Health Medical Scheme', 'Sisonke Health Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Sizwe', 'Sizwe',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'South African Breweries', 'South African Breweries',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'SA Health', 'SA Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'South African Eagle Medical', 'South African Eagle Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'South African Municipal Medical Aid Society', 'South African Municipal Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'South African Police Service', 'South African Police Service',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Southern Sun Group Medical Scheme', 'Southern Sun Group Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Soverign', 'Soverign',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Spectramed', 'Spectramed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Strata Healthcare Management', 'Strata Healthcare Management',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Stocksmed', 'Stocksmed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Suremed Health', 'Suremed Health',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Swazi Med', 'Swazi Med',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Telemed', 'Telemed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Thebemed', 'Thebemed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Tiger Brands Medical Scheme', 'Tiger Brands Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Topmed Medical Scheme', 'Topmed Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Toyota Medical Society (Toyomed)', 'Toyota Medical Society (Toyomed)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Transmed Medical Fund', 'Transmed Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Trawlermen''s Medical Fund', 'Trawlermen''s Medical Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Umed', 'Umed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Umvuzo Medical Aid', 'Umvuzo Medical Aid',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Union Flour Mills Sick Fund', 'Union Flour Mills Sick Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Universal Medical Scheme', 'Universal Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'University Of Natal Medical', 'University Of Natal Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'University Of The Witwatersrand Medical Aid Fund', 'University Of The Witwatersrand Medical Aid Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Venda Police And Prisons Medical Aid Scheme', 'Venda Police And Prisons Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Visimed', 'Visimed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Vulamed', 'Vulamed',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'WCA', 'WCA',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Wcmas', 'Wcmas',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Witbank Coalfields Medical Aid Society', 'Witbank Coalfields Medical Aid Society',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Wooltru Healthcare Fund', 'Wooltru Healthcare Fund',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Workers'' Union Medical', 'Workers'' Union Medical',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Xpress Care Medical Scheme', 'Xpress Care Medical Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Xstrata Medical Aid Scheme', 'Xstrata Medical Aid Scheme',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - SANDF', 'Public Sector - SANDF',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - GP (Gauteng)', 'Public Sector - GP (Gauteng)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - NP (Northern Province)', 'Public Sector - NP (Northern Province)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - KZN (Wka-Zulu Natal)', 'Public Sector - KZN (Wka-Zulu Natal)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - MP (Mpumalanga)', 'Public Sector - MP (Mpumalanga)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - NC (Northern Cape)', 'Public Sector - NC (Northern Cape)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - State Patient', 'Public Sector - State Patient',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - EC (Eastern Cape)', 'Public Sector - EC (Eastern Cape)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - WC (Western Cape)', 'Public Sector - WC (Western Cape)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - NW (North West)', 'Public Sector - NW (North West)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
values 
((SELECT ListItemId FROM ListItem WHERE ParentId IS NULL AND NAME = 'MedicalScheme'),
'Public Sector - FS (Free State)', 'Public Sector - FS (Free State)',
(SELECT lisa.ListItemId FROM ListItem lisa INNER JOIN ListItem lis ON (lisa.ParentId = lis.ListItemId AND lisa.Name = 'Active' AND lis.Name = 'Status')),
current_timestamp,
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
