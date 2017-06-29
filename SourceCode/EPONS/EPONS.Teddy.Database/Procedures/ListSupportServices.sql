IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListSupportServices]')
DROP PROCEDURE [EPONS].[ListSupportServices] 
GO

CREATE PROCEDURE [EPONS].[ListSupportServices] 
AS
SELECT 
[supportService].[SupportServiceId] AS [Id],
[supportService].[Name] AS [Name]
FROM [ValueObjects].[SupportServices] AS [supportService]

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListSupportServices]', 'Executed'