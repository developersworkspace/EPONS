IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[SendMessageToRecipient]')
DROP PROCEDURE [EPONS].[SendMessageToRecipient] 
GO


CREATE PROCEDURE [EPONS].[SendMessageToRecipient]
@userId UNIQUEIDENTIFIER,
@messageId UNIQUEIDENTIFIER
AS

INSERT INTO [Message].[MessageRecipient]
           ([UserId]
           ,[MessageId]
		   ,[HasBeenRead])
     VALUES
           (@userId
           ,@messageId
		   ,0)

EXEC [Audit].[CreateLogEntry] '[EPONS].[SendMessageToRecipient]', 'Executed'


