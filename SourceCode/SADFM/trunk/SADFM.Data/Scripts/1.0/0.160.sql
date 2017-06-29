-- Fix APOM Scale


INSERT INTO ListItem (ParentId, Name, [Description], SortOrder,Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT	liat.ListItemId, 'APOM', 'APOM', 1,'APOM', lisa.ListItemId, getdate(), (SELECT TOP 1 AccountId FROM Account ORDER BY DateCreatedTimestamp)
FROM	ListItem lis
		INNER JOIN ListItem lisa ON (lis.ListItemId = lisa.ParentId AND lis.Name = 'Status' AND lisa.Name = 'Active')
		INNER JOIN ListItem liat ON (liat.ParentId IS NULL AND liat.Name = 'Scale');


DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ListItemId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'APOM' AND lis.ParentId = lip.ListItemId);
INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'ProcessSkills','Process Skills', 'The cognitive and executive functions that one uses to perform a task.  This includes the ability to plan a task, select and use tools and materials appropriately, to pace the actions and to adapt one’s performance when problems are encountered.', @active, current_timestamp, @actid),
(@id, 2, 'Communication/InteractionSkills','Communication/Interaction Skills', 'Exchange of information using the physical body and spoken language to express intentions and needs in building and maintaining social relationships.', @active, current_timestamp, @actid),
(@id, 3, 'LifeSkills','Life Skills', 'Skills and competencies required by a person to manage independently in the community.  It includes the abilities individuals acquire and develop to perform everyday tasks successfully8.', @active, current_timestamp, @actid),
(@id, 4, 'RolePerformance','Role Performance', 'The ability to meet the demands of roles in which the patient engages. A set of socially agreed upon expectations, tasks or obligations that a person fulfils and which become part of that person’s social identity and participation in everyday life.', @active, current_timestamp, @actid),
(@id, 5, 'BalancedLifeStyle','Balanced Life Style', 'Use of time, habits and routines that address personal needs and demands of environment, occupational preferences in balance (good mix of occupations in all areas: physical, mental, social, spiritual, rest).  It includes occupations that are meaningful and promotes wellness 8. ', @active, current_timestamp, @actid),
(@id, 6, 'Motivation','Motivation', 'The desire to explore and master the environment through occupation or engagement in activity.  It includes the basic drives and motives for action as well as the perception about the underlying main causes of events in one’s  life. ', @active, current_timestamp, @actid),
(@id, 7, 'SelfEsteem','Self Esteem', 'The worth that one ascribes to one self, the evaluation of one’s virtues, the desire to feel accepted and expectations of success or failure. ', @active, current_timestamp, @actid),
(@id, 8, 'Affect','Affect', 'The observed expression of emotion by others, what one is able to see from the outside.  The appropriateness of the emotion, how it is controlled and the range or repertoire of different emotions are aspects that one could observe in a person . ', @active, current_timestamp, @actid)
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProcessSkills18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProcessSkills'



INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Communication/InteractionSkills18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Communication/InteractionSkills'




INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'LifeSkills18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'LifeSkills'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RolePerformance18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RolePerformance'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'BalancedLifeStyle18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'BalancedLifeStyle'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'


INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'

INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'



INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect8', 8, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect9', 9, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect10', 10, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect11', 11, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect12', 12, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect13', 13, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect14', 14, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect15', 15, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect16', 16, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect17', 17, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Affect18', 18, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Affect'



