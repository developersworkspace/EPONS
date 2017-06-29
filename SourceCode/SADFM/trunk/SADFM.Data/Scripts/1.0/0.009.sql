ALTER TABLE [dbo].[Audit] ALTER COLUMN [TableName] varchar(150) NOT NULL;
ALTER TABLE [dbo].[Audit] ALTER COLUMN [TableName] varchar(150) NOT NULL;
ALTER TABLE [dbo].[Audit] ALTER COLUMN [FieldName] varchar(150) NOT NULL;
ALTER TABLE [dbo].[Audit] ALTER COLUMN [AccountId] uniqueidentifier NOT NULL;

ALTER TABLE [dbo].[Audit]
ADD CONSTRAINT FK_Audit_AccountId FOREIGN KEY (AccountId) 
REFERENCES [dbo].[Account] (AccountId) ;   