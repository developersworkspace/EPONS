UPDATE [Message] SET Archived = 0;
ALTER TABLE [Message] ALTER COLUMN Archived bit NOT NULL;