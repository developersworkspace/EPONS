IF OBJECT_ID('[Message].[MessageRecipient]', 'U') IS NOT NULL 
  DROP TABLE [Message].[MessageRecipient]; 

CREATE TABLE [Message].[MessageRecipient](
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[MessageId] UNIQUEIDENTIFIER NOT NULL,
	[HasBeenRead] BIT NOT NULL
	)

