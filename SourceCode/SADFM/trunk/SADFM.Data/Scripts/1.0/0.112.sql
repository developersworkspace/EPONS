ALTER TABLE CaseProvider ADD AccountId uniqueidentifier;
ALTER TABLE CaseProvider ADD CONSTRAINT FK_CaseProvider_Account FOREIGN KEY (AccountId) REFERENCES Account (AccountId);
