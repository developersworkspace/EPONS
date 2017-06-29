CREATE PROCEDURE [api].[CreateUser] 
@username VARCHAR(255),
@emailAddress VARCHAR(255),
@password VARCHAR(255)
AS
DECLARE @userId UNIQUEIDENTIFIER
DECLARE @inactiveStatusId UNIQUEIDENTIFIER
DECLARE @userTypeId UNIQUEIDENTIFIER

SET @userId = NEWID()

SELECT TOP 1 @inactiveStatusId = [ListItemId]
  FROM [dbo].[ListItem] WHERE Name = 'Inactive'

SELECT TOP 1 @userTypeId = [ListItemId]
  FROM [dbo].[ListItem] WHERE Name = 'User'

INSERT INTO [dbo].[Account] (
	[AccountId], 
	[AccountTypeId],
	[DateCreatedTimestamp],
	[StatusId],
	[FirstSignIn],
	[Username],
	[EmailAddress],
	[Password]
)
VALUES (
	@userId,
	@userTypeId,
	GETDATE(),
	@inactiveStatusId,
	1,
	@username,
	@emailAddress,
	@password
)

SELECT @userId AS [Id]