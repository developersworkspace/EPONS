ALTER TABLE [Visit] ADD CaseId uniqueidentifier;
ALTER TABLE [Visit] ADD CONSTRAINT FK_Visit_Case FOREIGN KEY (CaseId) REFERENCES [Case] (CaseId);