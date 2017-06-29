IF OBJECT_ID('[Survey].[Details]', 'U') IS NOT NULL 
  DROP TABLE [Survey].[Details]; 

CREATE TABLE [Survey].[Details](
	[SurveyId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(255) NOT NULL
)