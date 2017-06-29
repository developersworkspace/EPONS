ALTER TABLE [Case] ADD ProviderId uniqueidentifier not null;
ALTER TABLE [Case] ADD CONSTRAINT [FK_Case_Provider] FOREIGN KEY (ProviderId) REFERENCES Provider (ProviderId);