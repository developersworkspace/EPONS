CREATE PROCEDURE [api].[UnlockUserById] 
@userId UNIQUEIDENTIFIER
AS
DECLARE @activeStatusId UNIQUEIDENTIFIER

SELECT TOP 1 @activeStatusId = [ListItemId]
  FROM [dbo].[ListItem] WHERE Name = 'Active'

UPDATE  [dbo].[Account] SET [StatusId] = @activeStatusId WHERE [AccountId] = @userId