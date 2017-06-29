DECLARE @username VARCHAR(128)
DECLARE @password VARCHAR(128)

SET @username = 'yoda'
SET @password = '8C-A0-25-40-8C-33-97-C4-9A-C5-76-FF-B7-44-D3-F6'

CREATE PROCEDURE [api].[ValidateCredentials]
@username VARCHAR(128),
@password VARCHAR(128)
AS
SELECT [Username]
FROM [dbo].[Account] AS [account]
INNER JOIN [dbo].[ListItem] AS [accountType]
ON [accountType].[ListItemId] = [account].[AccountTypeId]
WHERE [Username] = @username
AND REPLACE([Password], '-', '') = @password
AND [accountType].[Name] = 'SuperAdmin'