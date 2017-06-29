IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListImpairmentGroups]')
DROP PROCEDURE [EPONS].[ListImpairmentGroups] 
GO

CREATE PROCEDURE [EPONS].[ListImpairmentGroups] 
AS
SELECT 
[impairmentGroup].[ImpairmentGroupId] AS [Id],
[impairmentGroup].[Code] + '.' + [impairmentGroup].[Name] AS [Name]
FROM [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
ORDER BY [impairmentGroup].[SortOrder]

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListImpairmentGroups]', 'Executed'