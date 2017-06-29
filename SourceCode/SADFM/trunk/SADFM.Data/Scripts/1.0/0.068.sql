UPDATE [MessageRecipient] SET Archived = 0;
ALTER TABLE [MessageRecipient] ALTER COLUMN Archived bit NOT NULL;