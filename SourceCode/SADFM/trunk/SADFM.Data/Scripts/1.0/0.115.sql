ALTER TABLE Visit ADD AccountId uniqueidentifier;
ALTER TABLE Visit ADD CONSTRAINT FK_Visit_Account FOREIGN KEY (AccountId) REFERENCES Account (AccountId);