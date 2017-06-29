IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindUnreadMessagesByUserId]')
DROP PROCEDURE [EPONS].[FindUnreadMessagesByUserId] 
GO


CREATE PROCEDURE [EPONS].[FindUnreadMessagesByUserId]
@userId UNIQUEIDENTIFIER
AS
SELECT 
[message].[MessageId] AS [Id],
[message].[SenderId] AS [SenderId],
[senderUser].[FirstName] + ' ' + [senderUser].[LastName] AS [SenderDisplayName],
[message].[Body] AS [Body],
[message].[Timestamp] AS [Timestamp],
[message].[PatientId] AS [PatientId],
[patient].[Firstname] + ' ' + [patient].[Lastname] AS [PatientDisplayName],
[recipientUser].[UserId] AS [RecipientId],
[recipientUser].[Firstname] AS [RecipientFirstname],
[recipientUser].[Lastname] AS [RecipientLastname]
FROM [Message].[Details] AS [message]
INNER JOIN [User].[Details] AS [senderUser]
ON [senderUser].[UserId] = [message].[SenderId]
INNER JOIN [Patient].[Details] AS [patient]
ON [patient].[PatientId] = [message].[PatientId]
INNER JOIN [Message].[MessageRecipient] AS [messageRecipient]
ON [messageRecipient].[MessageId] = [message].[MessageId]
INNER JOIN [User].[Details] AS [recipientUser]
ON [recipientUser].[UserId] = [messageRecipient].[UserId]
AND [recipientUser].[UserId] = @userId
AND [messageRecipient].[HasBeenRead] = 0
ORDER BY [message].[Timestamp] DESC

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindUnreadMessagesByUserId]', 'Executed'