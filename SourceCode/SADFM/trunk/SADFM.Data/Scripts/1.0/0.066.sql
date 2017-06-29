CREATE TABLE [Message] (
	MessageId uniqueidentifier not null,
	PatientId uniqueidentifier not null,
	FromAccountId uniqueidentifier not null,
	SentTimestamp datetime not null,
	Body nvarchar(max));
CREATE TABLE [MessageRecipient] (
	MessageRecipientId uniqueidentifier not null,
	MessageId uniqueidentifier not null,
	RecipientAccountId uniqueidentifier not null,
	ReadTimestamp datetime);

ALTER TABLE [Message] ADD CONSTRAINT [PK_Message] PRIMARY KEY (MessageId);
ALTER TABLE [Message] ADD CONSTRAINT [DF_Message_MessageId] DEFAULT (newid()) FOR MessageId;
ALTER TABLE [Message] ADD CONSTRAINT [FK_Message_PatientId] FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);
ALTER TABLE [Message] ADD CONSTRAINT [FK_Message_FromAccountId] FOREIGN KEY (FromAccountId) REFERENCES Account (AccountId);

ALTER TABLE [MessageRecipient] ADD CONSTRAINT [PK_MessageRecipient] PRIMARY KEY (MessageRecipientId);
ALTER TABLE [MessageRecipient] ADD CONSTRAINT [DF_MessageRecipient_MessageRecipientId] DEFAULT (newid()) FOR MessageRecipientId;
ALTER TABLE [MessageRecipient] ADD CONSTRAINT [FK_MessageRecipient_Message] FOREIGN KEY (MessageId) REFERENCES [Message] (MessageId);
ALTER TABLE [MessageRecipient] ADD CONSTRAINT [FK_MessageRecipient_RecipientAccountId] FOREIGN KEY (RecipientAccountId) REFERENCES Account (AccountId);
