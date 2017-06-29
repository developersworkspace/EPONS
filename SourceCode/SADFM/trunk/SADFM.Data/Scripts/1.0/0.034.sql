-- Fix Delta Scale
DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ListItemId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'Delta' AND lis.ParentId = lip.ListItemId);
INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'RealityGaps', 'Reality Gaps or Loss (difficulty to understand reality)', 'Reality gaps refer to disrupted thought processes that manifest in the Subject not being able to understand the reality. This also includes delusional comprehension where the Subject sees, hears and believes “things" that are clearly not present or not true (e.g. delusions (inappropriate to culture or a fixed false belief), hallucinations (false perception with no stimulus and could be audible, visual, tactile, olfactory, gustatory), formal thought disorder, decreased meaning in life, impaired (poor) insight, guilt, self blame, blaming others, conspiracy theories etc).', @active, current_timestamp, @actid),
(@id, 2, 'IncongruousActs', 'Incongruous Acts (doing things without any apparent real reason)', 'Incongruous acts or behaviour refer to any verbal or non-verbal expressive reactions of the Subject that appears inappropriate because they are very different from the surroundings, or are not suited to the situation (e.g. emotional lability, fatuousness, mood swings, incongruent emotions, neologisms, denial, bluntness, apathy, phobias, muscular spasms secondary to anxiety or learnt behaviour, defence mechanisms, withdrawal, projection, pain of non-pathological origin, agitation, psychosomatic disorders, anxiety and panic attacks).', @active, current_timestamp, @actid),
(@id, 3, 'SelfAbsorption', 'Acts of Self-absorption doing (things to reduce anxiety)', 'Self-absorption refers to any act or behaviour that indicates that the Subject is so pre-occupied with the self that s/he has difficulty considering other people (e.g. obsessional behaviour, obsessional thinking, compulsion, kleptomania, asocial behaviour, preoccupation with fantasies, perseveration, cravings, intrusiveness, tantrums, rage, violence, aggression, allurement, seductive behaviour, narcissism, provocation, verbal provocation, low level of motivation towards socially negotiated or culturally prescribed behaviour, low level of volition, manipulation, immediate gratification, childishness, poor social judgement.', @active, current_timestamp, @actid),
(@id, 4, 'Destructiveness', 'Acts of Destructiveness; Poor Coping Skills (doing things because they cannot cope)', 'Destructiveness refers to any act or behaviour (short or long standing), which most probably results from an inability to resolve problems (e.g. verbal abusiveness, emotional abusiveness, destructiveness against people, animals, plants or objects, self-mutilation, self-neglect, dietary disorders, substance abuse, procrastination, hypersomnia, wilful stealing, emotional dependency, low frustration tolerance, and occasional suicidal thoughts.', @active, current_timestamp, @actid),
(@id, 5, 'ConcentrationGaps', 'Concentration Gaps; Blank Attacks; Lack of Focus (doing things because they cannot focus)', 'Concentration gaps (blank attacks) refer to spells of loss / lack of focus, lack of memory, blank periods, absentmindedness, thought block, loitering, wondering, disorientated , distraction (e.g. due to insomnia, stress mismanagement or PTS, exposure to trauma, fatigue, flashbacks, worry, anxiety, etc).', @active, current_timestamp, @actid)

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'



-- Funder Explainations
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps1FE', 'PHYSICAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps2FE', 'EMOTIONAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps3FE', 'Needs helper / aware + attempting / Continue to act out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps4FE', 'Needs helper / aware + attempting / Sometimes still acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps5FE', 'Needs helper / aware + attempting / Not acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps6FE', 'Need an assistive device e.g. medication / maintain a therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RealityGaps7FE', 'No Assistive device e.g. medication / therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RealityGaps'




INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs1FE', 'PHYSICAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs2FE', 'EMOTIONAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs3FE', 'Needs helper / aware + attempting / Continue to act out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs4FE', 'Needs helper / aware + attempting / Sometimes still acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs5FE', 'Needs helper / aware + attempting / Not acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs6FE', 'Need an assistive device e.g. medication / maintain a therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'IncongruousActs7FE', 'No Assistive device e.g. medication / therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'IncongruousActs'


INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption1FE', 'PHYSICAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption2FE', 'EMOTIONAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption3FE', 'Needs helper / aware + attempting / Continue to act out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption4FE', 'Needs helper / aware + attempting / Sometimes still acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption5FE', 'Needs helper / aware + attempting / Not acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption6FE', 'Need an assistive device e.g. medication / maintain a therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfAbsorption7FE', 'No Assistive device e.g. medication / therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfAbsorption'


INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness1FE', 'PHYSICAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness2FE', 'EMOTIONAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness3FE', 'Needs helper / aware + attempting / Continue to act out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness4FE', 'Needs helper / aware + attempting / Sometimes still acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness5FE', 'Needs helper / aware + attempting / Not acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness6FE', 'Need an assistive device e.g. medication / maintain a therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Destructiveness7FE', 'No Assistive device e.g. medication / therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Destructiveness'


INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps1FE', 'PHYSICAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps2FE', 'EMOTIONAL DANGER:  Needs a helper / Not attempting to correct / Not aware', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps3FE', 'Needs helper / aware + attempting / Continue to act out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps4FE', 'Needs helper / aware + attempting / Sometimes still acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps5FE', 'Needs helper / aware + attempting / Not acting out', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps6FE', 'Need an assistive device e.g. medication / maintain a therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ConcentrationGaps7FE', 'No Assistive device e.g. medication / therapeutic framework', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ConcentrationGaps'



