IF OBJECT_ID('[Survey].[Options]', 'U') IS NOT NULL 
  DROP TABLE [Survey].[Options]; 

CREATE TABLE [Survey].[Options](
	[OptionId] UNIQUEIDENTIFIER NOT NULL,
	[QuestionId] UNIQUEIDENTIFIER NOT NULL,
	[Text] VARCHAR(255) NOT NULL,
	[SortOrder] INT NOT NULL
)