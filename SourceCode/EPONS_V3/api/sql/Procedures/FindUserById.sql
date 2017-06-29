CREATE PROCEDURE [api].[FindUserById] 
@userId UNIQUEIDENTIFIER
AS
SELECT 
[user].[AccountId] AS [Id],
[user].[Username] AS [Username],
[user].[EmailAddress] AS [EmailAddress],
[user].[FirstName] AS [Firstname],
[user].[LastName] AS [Lastname],
[user].[ContactNumber] AS [ContactNumber],
[user].[IDNumber] AS [IdentificationNumber],
[user].[RegistrationNumber] AS [RegistrationNumber],
[user].[PracticeNumber] AS [PracticeNumber],
[professionalBody].[Description] AS [ProfessionalBody],
CASE WHEN [status].[Name] = 'Active'
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT)
END AS [IsActive]
FROM [Account] AS [user] 
INNER JOIN [dbo].[ListItem] AS [status]
ON [status].[ListItemId] = [user].[StatusId]
LEFT JOIN [dbo].[ListItem] AS [professionalBody]
ON [professionalBody].[ListItemId] = [user].[ProfessionalBodyId]
WHERE [user].[AccountId] = @userId