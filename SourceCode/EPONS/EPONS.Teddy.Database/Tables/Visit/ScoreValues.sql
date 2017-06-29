IF OBJECT_ID('[Visit].[ScoreValues]', 'U') IS NOT NULL 
  DROP TABLE [Visit].[ScoreValues]; 
  
CREATE TABLE [Visit].[ScoreValues](
	[VisitId] UNIQUEIDENTIFIER NOT NULL,
	[ScoreValueId] UNIQUEIDENTIFIER NOT NULL
	)
