IF OBJECT_ID('[Survey].[Questions]', 'U') IS NOT NULL 
  DROP TABLE [Survey].[Questions]; 

CREATE TABLE [Survey].[Questions](
	[QuestionId] UNIQUEIDENTIFIER NOT NULL,
	[SurveyId] UNIQUEIDENTIFIER NOT NULL,
	[Text] VARCHAR(255) NOT NULL,
	[SortOrder] INT NOT NULL
)