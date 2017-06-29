IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[MarkMessagesAsRead]')
DROP PROCEDURE [EPONS].[MarkMessagesAsRead] 
GO


CREATE PROCEDURE [EPONS].[MarkMessagesAsRead]
@userId UNIQUEIDENTIFIER,
@patientId UNIQUEIDENTIFIER,
@timestamp DATETIME
AS 

UPDATE [messageRecipient]
SET [HasBeenRead] = 1
FROM [Message].[MessageRecipient] AS [messageRecipient]
INNER JOIN [Message].[Details] AS [message]
ON [message].[MessageId] = [messageRecipient].[MessageId]
AND [messageRecipient].[UserId] = @userId
AND [message].[PatientId] = @patientId
AND [message].[Timestamp] <= @timestamp

EXEC [Audit].[CreateLogEntry] '[EPONS].[MarkMessagesAsRead]', 'Executed'