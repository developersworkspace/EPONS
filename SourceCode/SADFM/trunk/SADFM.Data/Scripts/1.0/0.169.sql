ALTER TABLE [Account] ADD [ProfessionalBodyId] UNIQUEIDENTIFIER NULL;
ALTER TABLE [Account] ADD [RegistrationNumber] VARCHAR(30) NULL;
ALTER TABLE [Account] ADD CONSTRAINT FK_ProfessionalBody FOREIGN KEY (ProfessionalBodyId) REFERENCES [ListItem] (ListItemId);
