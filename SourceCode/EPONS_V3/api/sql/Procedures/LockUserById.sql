CREATE PROCEDURE [api].[LockUserById] 
@userId UNIQUEIDENTIFIER
AS
DECLARE @inactiveStatusId UNIQUEIDENTIFIER

SELECT TOP 1 @inactiveStatusId = [ListItemId]
  FROM [dbo].[ListItem] WHERE Name = 'Inactive'

UPDATE  [dbo].[Account] SET [StatusId] = @inactiveStatusId WHERE [AccountId] = @userId