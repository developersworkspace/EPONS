ALTER TABLE ListItem ALTER COLUMN [Code] VARCHAR(50);

UPDATE li SET Value='Acute', Code='(A:ICU)', SortOrder=1 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'ICU' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Acute', Code='(A:HC)', SortOrder=2 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'HighCare' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Acute', Code='(A:GW)', SortOrder=3 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'GW' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);

INSERT INTO ListItem (ParentId, Name, Description, Code, Value, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Name='ProviderUnit' AND ParentId IS NULL), 'Sub-acute', 'Sub-acute', '(SA)', 'Sub-Acute', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

UPDATE li SET Value='Non-Acute', Code='(HBC)', Description = 'Home Based Care', SortOrder=5 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'HomeBasedCare' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(OPD)', Description = 'Out Patients Department', SortOrder=6 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'OutPatients' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(LTC:PID)', Description = 'Long Term Care: People with Intellectual Disabilities related', SortOrder=7 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'PID' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(LTC:OLDAGE)', Description = 'Long Term Care:Old Age related', SortOrder=8 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'OldAge' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(LTC:TRAU)', Description = 'Long Term Care:Trauma related', SortOrder=9, Name='Trauma' FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'Trauma Ward' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(LTC:DIS)', Description = 'Long Term Care:Disease/Disability related', SortOrder=10 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'Disease' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);
UPDATE li SET Value='Non-Acute', Code='(LTC:MENT)', Description = 'Long Term Care:Mental illness related', SortOrder=11 FROM ListItem lip INNER JOIN ListItem li ON (li.Name = 'MentalIllness' AND li.ParentId = lip.ListItemId AND lip.Name='ProviderUnit' AND lip.ParentId IS NULL);

DELETE psts FROM ListItem lip INNER JOIN ListItem li ON (lip.ParentId = (SELECT ListItemId FROM ListItem WHERE Name='ProviderUnit' AND ParentId IS NULL) AND lip.SortOrder IS NULL AND li.ParentId = lip.ListItemId) INNER JOIN ProviderServiceType pst ON (pst.ServiceTypeId = li.ListItemId) INNER JOIN ProviderServiceTypeScale psts ON (psts.ProviderServiceTypeId = pst.ProviderServiceTypeId);
DELETE pst FROM ListItem lip INNER JOIN ListItem li ON (lip.ParentId = (SELECT ListItemId FROM ListItem WHERE Name='ProviderUnit' AND ParentId IS NULL) AND lip.SortOrder IS NULL AND li.ParentId = lip.ListItemId) INNER JOIN ProviderServiceType pst ON (pst.ServiceTypeId = li.ListItemId);
DELETE li FROM ListItem lip INNER JOIN ListItem li ON (lip.ParentId = (SELECT ListItemId FROM ListItem WHERE Name='ProviderUnit' AND ParentId IS NULL) AND lip.SortOrder IS NULL AND li.ParentId = lip.ListItemId);

DELETE ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='ProviderUnit' AND ParentId IS NULL) AND SortOrder IS NULL;
DELETE FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Code = '(LTC:TRAU)');


--A:ICU
UPDATE	li
SET		Code =
			CASE Name
				WHEN 'General' THEN '(A:ICU:Gen)'
				WHEN 'Medical' THEN '(A:ICU:Med)'
				WHEN 'Cardiac' THEN '(A:ICU:Car)'
				WHEN 'Surgical' THEN '(A:ICU:Sur)'
				WHEN 'Trauma' THEN '(A:ICU:Trau)'
				WHEN 'Neuro' THEN '(A:ICU:Neur)'
				WHEN 'Paediatric' THEN '(A:ICU:Paed)'
			END,
		SortOrder =
			CASE Name
				WHEN 'General' THEN 1
				WHEN 'Medical' THEN 2
				WHEN 'Cardiac' THEN 3
				WHEN 'Surgical' THEN 4
				WHEN 'Trauma' THEN 5
				WHEN 'Neuro' THEN 6
				WHEN 'Paediatric' THEN 7
			END
FROM	ListItem li
WHERE	ParentId = (SELECT ListItemId FROM ListItem WHERE Code='(A:ICU)');

UPDATE	li
SET		Code =
			CASE Name
				WHEN 'General' THEN '(A:HC:Gen)'
				WHEN 'Medical' THEN '(A:HC:Med)'
				WHEN 'Cardiac' THEN '(A:HC:Car)'
				WHEN 'Surgical' THEN '(A:HC:Sur)'
				WHEN 'Trauma' THEN '(A:HC:Trau)'
				WHEN 'Neuro' THEN '(A:HC:Neur)'
				WHEN 'Paediatric' THEN '(A:HC:Paed)'
				WHEN 'Orthopaedic' THEN '(A:HC:Ortho)'
			END,
		SortOrder =
			CASE Name
				WHEN 'General' THEN 1
				WHEN 'Medical' THEN 2
				WHEN 'Cardiac' THEN 3
				WHEN 'Surgical' THEN 4
				WHEN 'Trauma' THEN 5
				WHEN 'Neuro' THEN 6
				WHEN 'Paediatric' THEN 7
				WHEN 'Orthopaedic' THEN 8
			END
FROM	ListItem li
WHERE	ParentId = (SELECT ListItemId FROM ListItem WHERE Code='(A:HC)');

UPDATE	li
SET		Code =
			CASE Name
				WHEN 'Investigative' THEN '(A:GW:Invest)'
				WHEN 'Pre operative' THEN '(A:GW:Pre Op)'
				WHEN 'High tech treatment' THEN '(A:GW:High Tec)'
				WHEN 'Convalescent' THEN '(A:GW:Conval)'
				WHEN 'Rehab' THEN '(A:GW:Rehab)'
				WHEN 'Palliative (End of Life) Care' THEN '(A:GW:Pall)'
				WHEN 'Psych' THEN '(A:GW:Ment)'
			END,
		SortOrder =
			CASE Name
				WHEN 'Investigative' THEN 1
				WHEN 'Pre operative' THEN 2
				WHEN 'High tech treatment' THEN 3
				WHEN 'Convalescent' THEN 4
				WHEN 'Rehab' THEN 5
				WHEN 'Palliative (End of Life) Care' THEN 6
				WHEN 'Psych' THEN 7
			END
FROM	ListItem li
WHERE	ParentId = (SELECT ListItemId FROM ListItem WHERE Code='(A:GW)');

INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(SA)'), 'Convalescence', '(SA:Conval)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(SA)'), 'Rehab', '(SA:Rehab)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(SA)'), 'Palliative (End of Life) Care', '(SA:Pall)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(SA)'), 'Mental Health', '(SA:Ment)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--NA:HBC
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC(Assessments)', '(NA:HBC:Assessments)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC(Nursing Visits)', '(NA:HBC:Visits)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC(Convalescence)', '(NA:HBC:Convalescent)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC(Rehab)', '(NA:HBC:Rehab)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC (Palliative End of Life Care)', '(NA:HBC:Pall)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC (Mental Health Care)', '(NA: HBC:Mental)', 6,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(HBC)'), 'HBC (Home Ventilation)', '(NA:HBC: Ventilator)', 7,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--NA:OPD
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(OPD)'), 'GP', '(NA:OPD:GP)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--LTC:PID
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:PID)'), 'Mild', '(NA:LTC:PID:Mild)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:PID)'), 'Moderate', '(NA:LTC:PID:Mod)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:PID)'), 'Severe', '(NA:LTC:PID:Sev)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:PID)'), 'Profound', '(NA:LTC:PID:Prof)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:PID)'), 'Challenging Behaviour', '(NA:LTC:PID:ChalB)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--LTD:OLDAGE
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:OLDAGE)'), 'Mild', '(NA:LTC:OLDAGE:Mild)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:OLDAGE)'), 'Moderate', '(NA:LTC:OLDAGE:Mod)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:OLDAGE)'), 'Severe', '(NA:LTC:OLDAGE:Sev)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:OLDAGE)'), 'Profound', '(NA:LTC:OLDAGE:Prof)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:OLDAGE)'), 'Challenging Behaviour', '(NA:LTC:OLDAGE:ChalB)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--LTC:TRAU
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:TRAU)'), 'Mild', '(NA:LTC:TRAU:Mild)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:TRAU)'), 'Moderate', '(NA:LTC:TRAU:Mod)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:TRAU)'), 'Severe', '(NA:LTC:TRAU:Sev)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:TRAU)'), 'Profound', '(NA:LTC:TRAU:Prof)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:TRAU)'), 'Challenging Behaviour', '(NA:LTC:TRAU:ChalB)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--LTC:DIS
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:DIS)'), 'Mild', '(NA:LTC:DIS:Mild)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:DIS)'), 'Moderate', '(NA:LTC:DIS:Mod)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:DIS)'), 'Severe', '(NA:LTC:DIS:Sev)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:DIS)'), 'Profound', '(NA:LTC:DIS:Prof)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:DIS)'), 'Challenging Behaviour', '(NA:LTC:DIS:ChalB)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));

--LTC:MENT
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:MENT)'), 'Mild', '(NA:LTC:MENT:Mild)', 1,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:MENT)'), 'Moderate', '(NA:LTC:MENT:Mod)', 2,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:MENT)'), 'Severe', '(NA:LTC:MENT:Sev)', 3,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:MENT)'), 'Profound', '(NA:LTC:MENT:Prof)', 4,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
INSERT INTO ListItem (ParentId, Name, Code, SortOrder, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES ((SELECT ListItemId FROM ListItem WHERE Code='(LTC:MENT)'), 'Challenging Behaviour', '(NA:LTC:MENT:ChalB)', 5,
(SELECT ListItemId FROM ListItem WHERE ParentId = (SELECT ListItemId FROM ListItem WHERE Name='Status' AND ParentId IS NULL) AND Name = 'Active'),
GETDATE(),
(SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp));
