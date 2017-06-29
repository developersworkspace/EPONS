DECLARE @accountId uniqueidentifier;
SELECT TOP 1 @accountId=AccountId FROM [Account];

DECLARE @statusId uniqueidentifier;
SELECT TOP 1 @statusId=ListItemId FROM [ListItem] WHERE Name = 'Active';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Delusions3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Delusions' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hallucinations3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hallucinations' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Thought process disorder3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Thought process disorder' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Poverty of thought/speech3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Poverty of thought/speech' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Incoherence of thought/speech3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Incoherence of thought/speech' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Thought block3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Thought block' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Impaired judgment3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Impaired judgment' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Guilt3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Guilt' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self-blame3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self-blame' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blaming others3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blaming others' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Conspiracy Theories***3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Conspiracy Theories***' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Decreased Meaning of life3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Decreased Meaning of life' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Impaired insight3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Impaired insight' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional liability3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional liability' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Fatuousness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Fatuousness' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Inappropriate affect3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Inappropriate affect' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Bluntness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Bluntness' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Apathy3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Apathy' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Phobias3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Phobias' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Muscular spasms secondary to Anxiety or Learnt behaviour3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Muscular spasms secondary to Anxiety or Learnt behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Psychomotor agitation3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Psychomotor agitation' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Psychosomatic disorder3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Psychosomatic disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Somatoform disorder3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Somatoform disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Conversion disorder3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Conversion disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Panic Attacks3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Panic Attacks' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Projection3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Projection' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Denial3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Denial' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Withdrawal3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Withdrawal' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'A-volition3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'A-volition' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Agitation3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Agitation' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Anxiety3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Anxiety' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Inappropriate dress3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Inappropriate dress' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Compulsive behaviour3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Compulsive behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Obsessional thinking (Obsession)3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Obsessional thinking (Obsession)' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Kleptomania3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Kleptomania' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Preoccupation with Fantasies3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Preoccupation with Fantasies' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Cravings3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Cravings' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Egocentrism3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Egocentrism' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Provocation3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Provocation' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Low level of motivation towards socially negotiated or culturally described behaviour3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Low level of motivation towards socially negotiated or culturally described behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Poor social judgment3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Poor social judgment' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Withdrawal3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Withdrawal' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Intrusiveness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Intrusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Tantrums3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Tantrums' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Rage3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Rage' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Violent3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Violent' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Violence3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Violence' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Aggression3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Aggression' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Allurement3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Allurement' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Seductive Behaviour (Seductiveness)3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Seductive Behaviour (Seductiveness)' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Manipulation3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Manipulation' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Immediate Gratification3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Immediate Gratification' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Childishness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Childishness' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Over-activity3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Over-activity' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional abusiveness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional abusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Destructiveness against humans, plants, animals or objects3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Destructiveness against humans, plants, animals or objects' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hostility3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hostility' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Aggression3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Aggression' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self- Mutilation or injury3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self- Mutilation or injury' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self-neglect (Neglect)3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self-neglect (Neglect)' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Dietary disorders3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Dietary disorders' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Substance abuse3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Substance abuse' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Willful stealing3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Willful stealing' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Procrastination3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Procrastination' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hypersomnia3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hypersomnia' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Insomnia3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Insomnia' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional Dependency3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional Dependency' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Low Frustration Tolerance level3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Low Frustration Tolerance level' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Occasional Suicidal Thoughts3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Occasional Suicidal Thoughts' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Verbal Abusiveness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Verbal Abusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Medication abuse3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Medication abuse' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Loss or lack of focus3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Loss or lack of focus' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Distractibility3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Distractibility' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Amnesia3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Amnesia' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blackouts3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blackouts' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Absent Mindedness3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Absent Mindedness' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Loitering3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Loitering' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Wandering3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Wandering' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blank attacks3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blank attacks' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Disorientation3' AS Name,'Needs helper / aware + attempting / Continue to act out' AS [Description],@accountId,@statusId,GETDATE(),'3' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Disorientation' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
