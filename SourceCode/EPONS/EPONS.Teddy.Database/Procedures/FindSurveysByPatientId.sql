IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindSurveysByPatientId]')
DROP PROCEDURE [EPONS].[FindSurveysByPatientId] 
GO

CREATE PROCEDURE [EPONS].[FindSurveysByPatientId]
@patientId UNIQUEIDENTIFIER
AS
SELECT 
[SurveyId] AS [Id]
,[Name] AS [Name]
FROM [Survey].[Details]