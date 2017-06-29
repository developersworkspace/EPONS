IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[SendMessage]')
DROP PROCEDURE [EPONS].[SendMessage] 
GO


CREATE PROCEDURE [EPONS].[SendMessage]
@senderId UNIQUEIDENTIFIER,
@patientId UNIQUEIDENTIFIER,
@body VARCHAR(MAX)
AS
DECLARE @messageId UNIQUEIDENTIFIER
SET @messageId = NEWID()

INSERT INTO [Message].[Details]
           ([MessageId]
           ,[PatientId]
           ,[SenderId]
           ,[Timestamp]
           ,[Body])
     VALUES
           (@messageId
           ,@patientId
           ,@senderId
           ,GETDATE()
           ,@body)
		    
SELECT @messageId AS [MessageId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[SendMessage]', 'Executed'


