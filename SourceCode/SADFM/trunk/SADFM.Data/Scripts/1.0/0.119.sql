DECLARE @accountId uniqueidentifier;
SELECT TOP 1 @accountId=AccountId FROM [Account];

DECLARE @statusId uniqueidentifier;
SELECT TOP 1 @statusId=ListItemId FROM [ListItem] WHERE Name = 'Active';

INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Delusions5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Delusions' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hallucinations5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hallucinations' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Thought process disorder5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Thought process disorder' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Poverty of thought/speech5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Poverty of thought/speech' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Incoherence of thought/speech5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Incoherence of thought/speech' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Thought block5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Thought block' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Impaired judgment5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Impaired judgment' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Guilt5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Guilt' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self-blame5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self-blame' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blaming others5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blaming others' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Conspiracy Theories***5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Conspiracy Theories***' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Decreased Meaning of life5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Decreased Meaning of life' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Impaired insight5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Impaired insight' AND a.ParentId = b.ListItemId AND b.Code = 'RealityGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional liability5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional liability' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Fatuousness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Fatuousness' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Inappropriate affect5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Inappropriate affect' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Bluntness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Bluntness' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Apathy5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Apathy' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Phobias5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Phobias' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Muscular spasms secondary to Anxiety or Learnt behaviour5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Muscular spasms secondary to Anxiety or Learnt behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Psychomotor agitation5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Psychomotor agitation' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Psychosomatic disorder5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Psychosomatic disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Somatoform disorder5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Somatoform disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Conversion disorder5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Conversion disorder' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Panic Attacks5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Panic Attacks' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Projection5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Projection' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Denial5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Denial' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Withdrawal5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Withdrawal' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'A-volition5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'A-volition' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Agitation5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Agitation' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Anxiety5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Anxiety' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Inappropriate dress5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Inappropriate dress' AND a.ParentId = b.ListItemId AND b.Code = 'IncongruousActs';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Compulsive behaviour5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Compulsive behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Obsessional thinking (Obsession)5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Obsessional thinking (Obsession)' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Kleptomania5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Kleptomania' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Preoccupation with Fantasies5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Preoccupation with Fantasies' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Cravings5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Cravings' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Egocentrism5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Egocentrism' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Provocation5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Provocation' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Low level of motivation towards socially negotiated or culturally described behaviour5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Low level of motivation towards socially negotiated or culturally described behaviour' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Poor social judgment5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Poor social judgment' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Withdrawal5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Withdrawal' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Intrusiveness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Intrusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Tantrums5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Tantrums' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Rage5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Rage' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Violent5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Violent' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Violence5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Violence' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Aggression5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Aggression' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Allurement5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Allurement' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Seductive Behaviour (Seductiveness)5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Seductive Behaviour (Seductiveness)' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Manipulation5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Manipulation' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Immediate Gratification5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Immediate Gratification' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Childishness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Childishness' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Over-activity5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Over-activity' AND a.ParentId = b.ListItemId AND b.Code = 'SelfAbsorption';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional abusiveness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional abusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Destructiveness against humans, plants, animals or objects5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Destructiveness against humans, plants, animals or objects' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hostility5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hostility' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Aggression5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Aggression' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self- Mutilation or injury5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self- Mutilation or injury' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Self-neglect (Neglect)5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Self-neglect (Neglect)' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Dietary disorders5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Dietary disorders' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Substance abuse5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Substance abuse' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Willful stealing5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Willful stealing' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Procrastination5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Procrastination' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Hypersomnia5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Hypersomnia' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Insomnia5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Insomnia' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Emotional Dependency5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Emotional Dependency' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Low Frustration Tolerance level5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Low Frustration Tolerance level' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Occasional Suicidal Thoughts5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Occasional Suicidal Thoughts' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Verbal Abusiveness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Verbal Abusiveness' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Medication abuse5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Medication abuse' AND a.ParentId = b.ListItemId AND b.Code = 'Destructiveness';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Loss or lack of focus5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Loss or lack of focus' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Distractibility5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Distractibility' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Amnesia5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Amnesia' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blackouts5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blackouts' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Absent Mindedness5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Absent Mindedness' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Loitering5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Loitering' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Wandering5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Wandering' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Blank attacks5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Blank attacks' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
INSERT INTO ListItem (ParentId,Name,[Description],LastUpdateAccountId, StatusId,LastUpdateTimestamp,Value) SELECT a.ListItemId AS ParentId,'Disorientation5' AS Name,'Needs helper / aware + attempting / Not acting out' AS [Description],@accountId,@statusId,GETDATE(),'5' FROM [ListItem] AS a JOIN [ListItem] AS b ON a.Name = 'Disorientation' AND a.ParentId = b.ListItemId AND b.Code = 'ConcentrationGaps';
