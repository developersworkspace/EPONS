-- Fix Zeta Scale
DECLARE @id uniqueidentifier, @active uniqueidentifier, @actid uniqueidentifier
SELECT	@id = lis.ParentId,
		@active = lis.StatusId,
		@actid = lis.LastUpdateAccountId
FROM	ListItem lip
		INNER JOIN ListItem lis ON (lip.ParentId IS NULL AND lip.Name = 'Scale' AND lis.Name = 'Gamma' AND lis.ParentId = lip.ListItemId);
INSERT INTO ListItem (ParentId, Code, Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES (@id, 'Zeta', 'Zeta', 'Zeta', @active, current_timestamp, @actid)
SELECT	@id = ListItemId
FROM	ListItem
WHERE	ParentId = @id AND Name = 'Zeta'
INSERT INTO ListItem (ParentId, SortOrder, Code, Name, [Description], StatusId, LastUpdateTimestamp, LastUpdateAccountId)
VALUES
(@id, 1, 'Motivation', 'Motivation (as an attribute of Personal Ability)', 'The drive that a client applies to improve their social functioning.', @active, current_timestamp, @actid),
(@id, 2, 'Resilience', 'Personal resilience (as an attribute of Personal Ability)', 'The ability to recover from challenges and/or crisis conditions over time to maintain social functioning.', @active, current_timestamp, @actid),
(@id, 3, 'ProblemSolving', 'Problem Solving (as an attribute of “Personal Ability")', 'The ability to identify a problem, weigh different options, choose appropriate options and courses of action and evaluate these decisions in relation to appropriate  social functioning.', @active, current_timestamp, @actid),
(@id, 4, 'Attitude', 'Attitude Adjustment (as an attribute of “Personal Ability")', 'The ability to adjust socially unacceptable perceptions and beliefs towards appropriate social outcomes', @active, current_timestamp, @actid),
(@id, 5, 'EmotionalControl', 'Emotional Control (as an attribute of “Personal Ability")', 'The ability to consistently and appropriately exert control of emotions in a social situation', @active, current_timestamp, @actid),
(@id, 6, 'SelfEsteem', 'Self- esteem (as an attribute of Environ-to-Person Interaction)', 'The ability to successfully establish, shape, gain and maintain respect, dignity and confidence.', @active, current_timestamp, @actid),
(@id, 7, 'Relationship', 'Relationship Maintenance (as an attribute of Environ-to-Person Interaction)', 'The ability to consider others and interact effectively. ', @active, current_timestamp, @actid),
(@id, 8, 'RoleTaking', 'Role-taking (as an attribute of Environ-to-Person Interaction)', 'The ability to effectively take on diverse social roles relevant to his social context', @active, current_timestamp, @actid),
(@id, 9, 'SelfSustainability', 'Self-sustainability (as an attribute of Environment-to-Person Transaction)', 'The ability to access, manage and control resources to maintain basic livelihood needs.', @active, current_timestamp, @actid),
(@id, 10, 'Mentality', 'Mental health management (as an Environment-to-Person Transaction)', 'The ability to manage and control behaviours and reactions associated with a mental health condition to function independently.', @active, current_timestamp, @actid),
(@id, 11, 'Physical', 'Physical Health Care', 'The ability to manage general and physical health towards functioning optimally.', @active, current_timestamp, @actid),
(@id, 12, 'SelfPresentation', 'Self-Presentation', 'The ability to maintain himself and his environment so that it is acceptable for social functioning.', @active, current_timestamp, @actid)

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
SELECT ListItemId, 'Resilience1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
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
SELECT ListItemId, 'Relationship1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation1', 1, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation2', 2, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation3', 3, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation4', 4, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation5', 5, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation6', 6, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Value, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation7', 7, StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'

-- Funder Explaination
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Motivation and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Motivation but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Motivation.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Motivation.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Motivation7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Motivation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Personal Resilience and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Personal Resilience but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Personal Resilience.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Personal Resilience.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Resilience7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Resilience'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Problem Solving and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Problem Solving but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Problem Solving.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Problem Solving.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'ProblemSolving7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'ProblemSolving'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Attitude Adjustment and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Attitude Adjustment but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Attitude Adjustment.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Attitude Adjustment.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Attitude7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Attitude'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Emotional Control and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Emotional Control but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Emotional Control.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Emotional Control.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'EmotionalControl7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'EmotionalControl'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Self-Esteem and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Self-Esteem but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Self-Esteem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Self-Esteem.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfEsteem7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfEsteem'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor R/ship Maintenance and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor R/ship Maintenance but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor R/ship Maintenance.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor R/ship Maintenance.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Relationship7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Relationship'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Role Taking and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Role Taking but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Role Taking.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Role Taking.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'RoleTaking7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'RoleTaking'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Self-Sustainability and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Self-Sustainability but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Self-Sustainability.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Self-Sustainability.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfSustainability7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfSustainability'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Mental Health Mgt and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Mental Health Mgt but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Mental Health Management.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Mental Health Management.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Mentality7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Mentality'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Physical Health Care and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Physical Health Care but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Physical Health Care.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Physical Health Care.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'Physical7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'Physical'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation1FE', 'Active Therapeutic Intervention required - Client is unaware and not attempting to correct their poor Self-Presentation and is a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation2FE', 'Active Therapeutic Intervention required - Client is unaware and resists attempting to correct their poor Self-Presentation but is NOT a danger to himself and/or others.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation3FE', 'Active Therapeutic Intervention required - Client is receptive to changing their poor Self-Presentation.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation4FE', 'Active Therapeutic Intervention required - Client is cooperating in changing their poor Self-Presentation.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation5FE', 'Active Therapeutic Intervention required - “adjusting, changing,  etc" Family environment, social structures, financial, work, etc', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation6FE', 'Occasional aftercare support.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
INSERT INTO ListItem (ParentId,Name, Description, StatusId, LastUpdateTimestamp, LastUpdateAccountId)
SELECT ListItemId, 'SelfPresentation7FE', 'OK - Can do everything.', StatusId, current_timestamp, LastUpdateAccountId
FROM ListItem
WHERE ParentId = @id AND Code = 'SelfPresentation'
