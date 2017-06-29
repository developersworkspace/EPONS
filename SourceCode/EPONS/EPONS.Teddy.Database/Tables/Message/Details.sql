IF OBJECT_ID('[Message].[Details]', 'U') IS NOT NULL 
  DROP TABLE [Message].[Details]; 

CREATE TABLE [Message].[Details](
	[MessageId] UNIQUEIDENTIFIER NOT NULL,
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[SenderId] UNIQUEIDENTIFIER NOT NULL,
	[Timestamp] DATETIME NOT NULL,
	[Body] NVARCHAR(max) NULL
	)

