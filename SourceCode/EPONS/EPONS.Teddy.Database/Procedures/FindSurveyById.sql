IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindSurveyById]')
DROP PROCEDURE [EPONS].[FindSurveyById] 
GO

CREATE PROCEDURE [EPONS].[FindSurveyById]
@surveyId UNIQUEIDENTIFIER
AS
SELECT 
[survey].[SurveyId] AS [Id],
[survey].[Name] AS [Name],
[surveyQuestion].[QuestionId] AS [SurveyQuestionId],
[surveyQuestion].[Text] AS [SurveyQuestionText],
[surveyQuestion].[SortOrder] AS [SurveyQuestionSortOrder],
[surveyQuestionOption].[OptionId] AS [SurveyQuestionOptionId],
[surveyQuestionOption].[Text] AS [SurveyQuestionOptionText],
[surveyQuestionOption].[SortOrder] AS [SurveyQuestionOptionSortOrder]
FROM [Survey].[Details] AS [survey]
INNER JOIN [Survey].[Questions] AS [surveyQuestion]
ON [surveyQuestion].[SurveyId] = [survey].[SurveyId]
INNER JOIN [Survey].[Options] AS [surveyQuestionOption]
ON [surveyQuestionOption].[QuestionId] = [surveyQuestion].[QuestionId]
AND [survey].[SurveyId] = @surveyId