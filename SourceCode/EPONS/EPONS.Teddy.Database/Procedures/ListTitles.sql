IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListTitles]')
DROP PROCEDURE [EPONS].[ListTitles] 
GO

CREATE PROCEDURE [EPONS].[ListTitles] 
AS
SELECT 
[title].[TitleId] AS [Id],
[title].[Name] AS [Name]
FROM [ValueObjects].[Titles] AS [title]
ORDER BY [title].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListTitles]', 'Executed'