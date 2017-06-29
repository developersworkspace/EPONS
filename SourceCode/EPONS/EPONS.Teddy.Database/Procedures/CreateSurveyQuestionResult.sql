IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateSurveyQuestionResult]')
DROP PROCEDURE [EPONS].[CreateSurveyQuestionResult] 
GO

CREATE PROCEDURE [EPONS].[CreateSurveyQuestionResult]
@userId UNIQUEIDENTIFIER,
@patientId UNIQUEIDENTIFIER,
@optionId UNIQUEIDENTIFIER,
@batchId UNIQUEIDENTIFIER
AS 
INSERT INTO [Survey].[Results]
           ([ResultId]
           ,[BatchId]
           ,[OptionId]
           ,[UserId]
           ,[PatientId]
           ,[Timestamp])
     VALUES
           (NEWID()
           ,@batchId
           ,@optionId
           ,@userId
           ,@patientId
           ,GETDATE())