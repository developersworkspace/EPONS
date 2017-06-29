-- Fix Gamma Scale
DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ListItemId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'Gamma' AND lis.ParentId = lip.ListItemId);
INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'MealPreparation', 'Meal Preparation', 'Meal preparation refers to the ability of the subject to prepare a nutritional meal. This includes: (1) Planning (setting-up nutritional menu and shopping list, (2) setting up (e.g. using microwave/ kettle etc), (3) preparing (e.g. peeling vegetables, making sandwich etc), (4) cooking (e.g. boiling, frying, grilling, baking) and (5) dishing up (e.g. laying out eating utensils, dishing food onto plates or into storage containers, etc)', @active, current_timestamp, @actid),
(@id, 2, 'HouseholdChores', 'Household Chores', 'Household chores includes all the abilities of the subject to maintain indoor household cleanliness, e.g. (1) sweeping, (2) dusting, (3) making of the beds, (4) laundry (linen etc), (5) washing (daily hand washing of small items) , (6) ironing, (7) dishwashing, (8) drafting shopping lists for cleaning materials etc.', @active, current_timestamp, @actid),
(@id, 3, 'Accessibility', 'Home / Vehicle Accessibility', 'Home/car accessibility refers to the ability of the subject to move independently  (1) from inside the home to the outside pickup point (2) getting into the vehicle (3) getting out of the vehicle  (4) move from outside pick-up point to inside the home again.', @active, current_timestamp, @actid),
(@id, 4, 'Commuting', 'Commuting', 'Commuting refers to the ability of the subjects to independently make the journey (with own car, taxi, bus) between home and those specific places the subject needs to visit regularly (e.g. shop, bank, church, clinic etc). This includes: (1) remembering/ following directions, (2) paying (taxi, bus, fuel station), (3) know where to stop/get off / park (4) without getting lost on the way (5) and doing the journey with safety (e.g. driving ability).', @active, current_timestamp, @actid),
(@id, 5, 'Errands', 'Errands (Shopping)', 'Errands refers to the ability of the subject to do basic shopping, banking, postal services etc; once the subject is in the shop, bank, post office etc. This includes: (1) using a shopping list (2) selecting the correct items (3) paying with cash/credit card (4) carry items (5) without getting lost when shopping.', @active, current_timestamp, @actid),
(@id, 6, 'MoneyMatters', 'Money Matters', 'Money matters refers to the ability of the subject to administer and pay the regular monthly accounts e.g. rent, water, electricity, telephone etc. This includes (1) receiving, (2) opening/sorting, (3) checking, (4) signing the cheques/ putting the money in envelops/doing e-banking and (5) paying the account on time.', @active, current_timestamp, @actid),
(@id, 7, 'SelfMedication', 'Self-Medication', 'Self-medication refers to the ability of the subject to self-medicate. This includes:  (1) taking the correct medicine in the (2) correct dosage at the (3) correct time and/or for the (4) correct reasons.', @active, current_timestamp, @actid),
(@id, 8, 'EmotionalStability', 'Emotional Stability', 'Emotional Stability refers to the ability of the subject to manage with their basic emotions (agitation, depression, anxiety, frustration, mood-swings etc), which are a result in the decrease of mental and bodily functioning.', @active, current_timestamp, @actid)

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
-- Funder Explainations
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation5FE', 'Remote supervision required - "remote supervision " establish a look-out network checking appliances, expired foods, pantry contents etc, issuing reminders, setting-up schedules, fixing barriers (setting-up).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for clutter, disarray, hygiene etc., issuing reminders, setting-up schedules, fixing barriers (setting-up).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for safety, ability etc., issuing reminders (time), setting-up schedules, fixing barriers (setting -up).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for ability with commuting, issuing reminders, setting-up schedules, fixing barriers.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for ability to do errands etc., issuing reminders, setting-up schedules, fixing barriers (setting-up).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for ability to do money matters, etc, issuing reminders, setting-up schedules, fixing barriers (setting-up).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication5FE', 'Remote supervision required - "remote supervision" establish a look-out network, checking for ability to do self-medication, etc, issuing reminders, setting-up schedules, fixing barriers (setting-up with pill schedule boxes and/or order prescriptions).', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability1FE', 'Direct help with tasks required - Subject does "nothing" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability2FE', 'Direct help with tasks required - Subject does 10% - 49% ...... s/he is "trying" within the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability3FE', 'Direct help with tasks required - Subject does 50% - 80%  but still needs "stay with" help to complete all the tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability4FE', 'Direct help with tasks required - Subject does  80% - 99% but still needs "occasional" help to complete the remaining tasks in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability5FE', 'Remote supervision required - "remote supervision /rudeness" establish a look-out network, checking for ability to stabilise emotions etc., issuing reminders, setting-up schedules, fixing barriers (setting-up e.g. providing treatment, remove stressors.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability6FE', 'Only an intuitive concern - no action taken.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability7FE', 'OK - Can do Everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
-- Provider Explainations
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation1PE', 'nothing =  eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation2PE', 'trying = eg Subject is only doing one  item in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MealPreparation4PE', 'occasional = eg Helper completes only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MealPreparation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores1PE', 'nothing = eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores2PE', 'trying = eg Subject is only doing one, two or three  items in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'HouseholdChores4PE', 'occasional = eg Helper complete only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'HouseholdChores'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility1PE', 'nothing = eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility2PE', 'trying = eg Subject is only doing one, two or three  items in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Accessibility4PE', 'occasional = eg Helper complete only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Accessibility'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting1PE', 'nothing = eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting2PE', 'trying = eg Subject is only doing one, two or three  items in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Commuting4PE', 'occasional = eg Helper complete only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Commuting'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands1PE', 'nothing = eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands2PE', 'trying = eg Subject is only doing one, two or three  items in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Errands4PE', 'occasional = eg Helper complete only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Errands'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters1PE', 'nothing = eg Subject is doing nothing in the definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters2PE', 'trying = eg Subject is only doing one, two or three  items in definition.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters3PE', 'stay with = eg Subject can do most of the items but helper needs to stay with.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'MoneyMatters4PE', 'occasional = eg Helper complete only one item.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'MoneyMatters'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication1PE', 'nothing = Subject is given pills in the hand to drink', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication2PE', 'trying = helper  fills the daily schedule pill boxes.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication3PE', 'stay with = helper fills the weekly schedule pill boxes.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfMedication4PE', 'occasional = Patient has been identified as been negligent with self-medication and the remedy is direct intervention through interviews, checking regularly on existing stock if medication has been taken correctly, or filling weekly pill schedule boxes.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfMedication'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability1PE', 'nothing = Subject is permanently distressed.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability2PE', 'trying = eg Subject needs hands-on help with emotions daily.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability3PE', 'stay with =  Subject needs hands-on help with emotions every 2-3 day.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalStability4PE', 'occasional =  Subject needs hands-on help with emotions weekly or less.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalStability'
