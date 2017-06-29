-- Fix Alpha Scale

DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier

SELECT	@id = lis.ListItemId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'Alpha' AND lis.ParentId = lip.ListItemId)

UPDATE	ListItem
SET		Description = 'Alpha Case Management'
WHERE	ListItemId = @id

INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'CNS', 'Central Nervous System (CNS)', 'Structures include brain, meninges, spinal cord, sympatic & parasympatic systems. Functions include all the mental functions, consciousness, sleep, energy and drive, etc.  ', @active, current_timestamp, @actid),
(@id, 2, 'PEES', 'Pain, Ear, Eye and Sensory System (PEES)', 'Structures include eyeball, eye socket and structures around the eye, the inner, middle and external ear. Functions include vision, hearing, balance, taste, smell, proprioception, touch and any sensation of pain experienced.', @active, current_timestamp, @actid),
(@id, 3, 'MNT', 'Mouth, Nose, Throat (MNT)', 'Structures include sinuses, teeth, tongue, salivary glands, tonsils, pharynx and larynx etc. Functions include airway, chewing, swallowing, voice and speech.', @active, current_timestamp, @actid),
(@id, 4, 'CVS', 'Cardiovascular (CVS)', 'Structures include the heart and all the arteries and veins. Functions include pumping, circulation, blood pressure etc.', @active, current_timestamp, @actid),
(@id, 5, 'RESP', 'Respiratory (RESP)', 'Structures include the bronchus, lungs, pleura and diaphragm etc.Functions include breathing, oxygenation, coughing etc.', @active, current_timestamp, @actid),
(@id, 6, 'GI', 'Gastro-Intestinal (GI)', 'Structures include the oesophagus, stomach, intestines, pancreas, liver and gall bladder. Functions include ingestion, digestion, absorption, and defecation and weight maintenance etc.', @active, current_timestamp, @actid),
(@id, 7, 'GU', 'Genito-Urinary (GU)', 'Structures include the urinary system, pelvic floor and reproductive system. Functions include urinary excretion, voiding and genital and hormonal functioning etc.', @active, current_timestamp, @actid),
(@id, 8, 'MOVE', 'Movement (MOVE)', 'Structures include the muscles, bones and joints of the head, neck, trunk, extremities and the shoulder and pelvic girdles. Functions include the stability, mobility and range of joint movement, the power, coordination and endurance of muscle function, etc. ', @active, current_timestamp, @actid),
(@id, 9, 'SKIN', 'Skin (SKIN)', 'Structures include the skin, skin glands and other subcutaneous structures, nails and hair. Functions include the protection and repair etc.', @active, current_timestamp, @actid),
(@id, 10, 'HI', 'Haematologigal / Immunologigal (HI)', 'Structures include the blood cells, antibodies, bone marrow, lymph glands, spleen etc. Functions of the haematological system include the blood production, the carrying of oxygen and metabolites and clotting. The functions of the immunological system include protecting the body against infections and foreign substances.', @active, current_timestamp, @actid),
(@id, 11, 'WEM', 'Water, Electrolyte & Mineral (WEM)', 'Structures include the bloodstream and body fluids. Functions include the regulation of water, minerals and electrolytes in the body.', @active, current_timestamp, @actid),
(@id, 12, 'EM', 'Endocrine / Metabolic (EM) (includes fevers)', 'Structures include the pancreas, thyroid, parathyroid, adrenal and pituitary glands. Functions of the endocrine system include is the production and regulation of hormonal levels in the body. Functions of the metabolic system include the intracellular regulation of carbohydrates, protein and fats to retain energy.', @active, current_timestamp, @actid)

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
SELECT ListItemId, 'MNT1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
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
SELECT ListItemId, 'RESP1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
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
SELECT ListItemId, 'HI1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'

-- FunderExplaination
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CNS7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CNS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'PEES7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'PEES'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MNT7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MNT'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'CVS7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'CVS'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RESP7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RESP'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment  (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GI7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'GU7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'GU'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MOVE7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MOVE'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SKIN7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SKIN'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HI7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HI'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'WEM7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'WEM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM1FE', 'In patient care - Should the patient be cared for on a one to 1 basis by an ICU trained or experienced PRN to actively monitor plus render high tech life support to the patient''s organ and system?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM2FE', 'In patient care - Should the patient be cared for on a one to 2/3 basis by an HC trained or experienced PRN to actively monitor and support the patient''s vital functions?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM3FE', 'In patient care - Should the patient be cared for by an investigative PRN to do investigative monitoring and procedures to secure a final diagnosis and a treatment plan or awaiting surgery or undergoing high tech treatment (e.g. radio/ nuclear therapy)?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM4FE', 'In patient care - Should the patient be cared for by a progress PRN to do progress monitoring, progress medication, and progress nursing procedures to finalise the treatment plan?', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM5FE', 'In patient care - MDT/ therapist assisted services includes physical rehab, end-of-life care or psych rehab where 1 or more therapists facilitates optimal functionality.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM6FE', 'Community based care - ', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EM7FE', 'Community based care - OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EM'
