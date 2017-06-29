-- Fix Eta Scale
DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ParentId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'Gamma' AND lis.ParentId = lip.ListItemId);
INSERT INTO ListItem (ParentId, Code, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES (@id, 'Eta', 'Eta','Eta', @active, current_timestamp, @actid)
SELECT	@id = ListItemId
FROM	ListItem
WHERE	ParentId = @id AND Name = 'Eta'
INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'PEES', 'PEES (Pain, Eyes, Ears and Sensory System)', 'Structures include eyeball, eye socket and structures around the eye, the inner, middle and external ear.  Functions include vision, hearing, balance, taste, smell, proprioception, touch and any sensation of pain experienced.', @active, current_timestamp, @actid),
(@id, 2, 'RESMONT', 'RESMONT (Respiratory system, Mouth, Nose and Throat)', 'Structures include the mouth and throat, nose and sinuses, larynx, bronchus, lungs, pleura and diaphragm etc. Functions include breathing, oxygenation, coughing etc.', @active, current_timestamp, @actid),
(@id, 3, 'GIGU', 'GIGU (Gastro-Intestinal and Genito urinary)', 'GIGU Structures include the oesophagus, stomach, intestines, pancreas, liver and gall bladder, urinary system, pelvic floor and reproductive system.  GIGU Functions include ingestion, digestion, absorption, and defecation and weight maintenance, urinary excretion, voiding, genital functioning including reproductive hormonal functioning etc.', @active, current_timestamp, @actid),
(@id, 4, 'SKIN', 'SKIN', 'Structures include the skin, mucous membranes (inside mouth and vagina) skin glands and other subcutaneous structures, nails and hair.  Functions include the protection and repair etc.', @active, current_timestamp, @actid),
(@id, 5, 'MUSKEL', 'MUSKEL (Muscular – Skeletal)', 'Structures include the muscles, bones and joints of the head, neck, trunk, extremities and the shoulder and pelvic girdles.  Functions include the stability, mobility and range of joint movement, the power, coordination and endurance of muscle function, etc.', @active, current_timestamp, @actid),
(@id, 6, 'CVS', 'CVS (Cardiovascular)', 'Structures include the heart and all the arteries and veins.  Functions include pumping, circulation, blood pressure etc.', @active, current_timestamp, @actid),
(@id, 7, 'CNS', 'CNS (Central nervous system)', 'Structures include brain, meninges, spinal cord, sympatic & parasympatic systems.  Functions include all the mental functions, consciousness, sleep, energy and drive, etc.', @active, current_timestamp, @actid),
(@id, 8, 'HIME', 'HIME (Haematological, Immune, Metabolic and Endocrine)', 'Haematological structures include the blood cells, antibodies, bone marrow, lymph glands, spleen etc. Haematological functions include the blood production, the carrying of oxygen and metabolites and clotting. Immunological functions include protecting the body against infections and foreign substances. Metabolic functions include the intracellular regulation of carbohydrates, protein and fats to retain energy.  Endocrine structures include the pancreas, thyroid, parathyroid, adrenal and pituitary glands. Endocrine functions include is the production and regulation of hormonal levels in the body.', @active, current_timestamp, @actid)

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
-- Funder Explainations
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer)  has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education & training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring - Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer)  has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer)  has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer) has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer) has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer) has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer) has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME1FE', 'Active PHC (Primary Health Care) Intervention required - No (0%) Compliance - Patient (or carer) has no insight of DIT (disease, illness & trauma) and is not trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME2FE', 'Active PHC (Primary Health Care) Intervention required - Partial (<49%) Compliance - Patient (or carer)  has partial insight of DIT (disease, illness & trauma) and is trying to reverse the cause or extent of the health problem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME3FE', 'Active PHC (Primary Health Care) Intervention required - (50-80%) Compliance - Patient (or carer)  has insight of the DIT (disease, illness & trauma) and is cooperating to reverse the cause or extent of the DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME4FE', 'Active PHC (Primary Health Care) Intervention required - Compliance but need HET (health education and training) - Patient requires HET to prevent the recurrence of the DIT (disease, illness & trauma).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME5FE', 'Active PHC (Primary Health Care) Intervention required - Ongoing medication, therapy and/or monitoring, Taking long-term medicine, Doing long-term therapy, Attend 1-6 monthly check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME6FE', 'No Active PHC (Primary Health Care) Intervention required - Come annually for routine check-ups.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME7FE', 'No Active PHC (Primary Health Care) Intervention required - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
-- Provider Explainations
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESMONT4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESMONT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GIGU4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GIGU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MUSKEL4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MUSKEL'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME1PE', 'Total dependence to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME2PE', 'Patient shows <49% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME3PE', 'Patient shows 50 - 80% ability to correct DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HIME4PE', 'Patient shows 81-99% ability to manage DIT.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HIME'
