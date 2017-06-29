DECLARE @accountId uniqueidentifier;
SELECT TOP 1 @accountId=AccountId FROM [Account];

DECLARE @statusId uniqueidentifier;
SELECT TOP 1 @statusId=ListItemId FROM [ListItem] WHERE Name = 'Active';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Attention0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Attention' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Pace0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Pace' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Tools and Materials0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Tools and Materials' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Concept formation0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Concept formation' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Skills' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Task Concept0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Task Concept' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Organizing space and objects0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Organizing space and objects' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Adaptation0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Adaptation' AND a.ParentId = b.ListItemId AND b.Code = 'ProcessSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Physicality (non-verbal communication) - Physical Contact0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Physicality (non-verbal communication) - Physical Contact' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Physicality (non-verbal) - Eye Contact0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Physicality (non-verbal) - Eye Contact' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Physicality (non-verbal) - Gestures0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Physicality (non-verbal) - Gestures' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Physicality (non-verbal) - Using body0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Physicality (non-verbal) - Using body' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Information exchange (verbal) - Use of speech0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Information exchange (verbal) - Use of speech' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Information exchange (verbal) - Exchanging information0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Information exchange (verbal) - Exchanging information' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Information exchange (verbal) - Expressing needs0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Information exchange (verbal) - Expressing needs' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Information exchange (verbal) - Initiation interaction0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Information exchange (verbal) - Initiation interaction' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Relations - Awareness of Social Norms0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Relations - Awareness of Social Norms' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Relations - Establishing rapport0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Relations - Establishing rapport' AND a.ParentId = b.ListItemId AND b.Code = 'Communication/InteractionSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Personal care, hygiene, grooming0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Personal care, hygiene, grooming' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Personal safety0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Personal safety' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Care of Medication0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Care of Medication' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Use of Transport0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Use of Transport' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Domestic skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Domestic skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Child care skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Child care skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Money management and budgeting skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Money management and budgeting skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Assertiveness0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Assertiveness' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Stress management0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Stress management' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Conflict management0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Conflict management' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Problem solving skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Problem solving skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Pre-vocational skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Pre-vocational skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Vocational skills0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Vocational skills' AND a.ParentId = b.ListItemId AND b.Code = 'LifeSkills';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Awareness of roles0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Awareness of roles' AND a.ParentId = b.ListItemId AND b.Code = 'RolePerformance';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Role balance0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Role balance' AND a.ParentId = b.ListItemId AND b.Code = 'RolePerformance';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Role expectations0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Role expectations' AND a.ParentId = b.ListItemId AND b.Code = 'RolePerformance';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Competency0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Competency' AND a.ParentId = b.ListItemId AND b.Code = 'RolePerformance';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Time use and routines0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Time use and routines' AND a.ParentId = b.ListItemId AND b.Code = 'BalancedLifeStyle';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Habits0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Habits' AND a.ParentId = b.ListItemId AND b.Code = 'BalancedLifeStyle';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Mix of occupations0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Mix of occupations' AND a.ParentId = b.ListItemId AND b.Code = 'BalancedLifeStyle';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Active involvement0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Active involvement' AND a.ParentId = b.ListItemId AND b.Code = 'Motivation';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Motives and drives0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Motives and drives' AND a.ParentId = b.ListItemId AND b.Code = 'Motivation';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Shows interest0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Shows interest' AND a.ParentId = b.ListItemId AND b.Code = 'Motivation';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Goal directed behaviour0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Goal directed behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'Motivation';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Locus of control0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Locus of control' AND a.ParentId = b.ListItemId AND b.Code = 'Motivation';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Commitment to task or situation0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Commitment to task or situation' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Using feedback0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Using feedback' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Satisfaction with self0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Satisfaction with self' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Social presence0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Social presence' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self worth0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self worth' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self assurance0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self assurance' AND a.ParentId = b.ListItemId AND b.Code = 'SelfEsteem';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Reportoire of emotions0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Reportoire of emotions' AND a.ParentId = b.ListItemId AND b.Code = 'Affect';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Control0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Control' AND a.ParentId = b.ListItemId AND b.Code = 'Affect';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Mood0' AS Name,'No data available' AS [Description],@accountId,@statusId,GETDATE(),'0' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Mood' AND a.ParentId = b.ListItemId AND b.Code = 'Affect';
