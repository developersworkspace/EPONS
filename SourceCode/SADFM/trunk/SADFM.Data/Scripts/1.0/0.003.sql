CREATE TABLE [Session] (
	SessionId uniqueidentifier not null,
	AccountId uniqueidentifier not null,
	StartTimestamp datetime not null,
	LastActionTimestamp datetime not null,
	Longitude float,
	Latitude float);
ALTER TABLE [Session] ADD CONSTRAINT PK_Session PRIMARY KEY (SessionId);
ALTER TABLE [Session] ADD CONSTRAINT FK_Session_Account FOREIGN KEY (AccountId) REFERENCES [Account] (AccountId);