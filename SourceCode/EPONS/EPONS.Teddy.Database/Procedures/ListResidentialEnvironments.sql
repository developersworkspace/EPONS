IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListResidentialEnvironments]')
DROP PROCEDURE [EPONS].[ListResidentialEnvironments] 
GO

CREATE PROCEDURE [EPONS].[ListResidentialEnvironments] 
AS
SELECT 
[residentialEnvironment].[ResidentialEnvironmentId] AS [Id],
[residentialEnvironment].[Name] AS [Name]
FROM [ValueObjects].[ResidentialEnvironments] AS [residentialEnvironment]
ORDER BY [Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListResidentialEnvironments]', 'Executed'