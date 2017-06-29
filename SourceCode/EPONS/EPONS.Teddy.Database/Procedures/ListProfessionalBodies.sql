IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListProfessionalBodies]')
DROP PROCEDURE [EPONS].[ListProfessionalBodies] 
GO

CREATE PROCEDURE [EPONS].[ListProfessionalBodies] 
AS
SELECT 
[professionalBody].[ProfessionalBodyId] AS [Id],
[professionalBody].[Name] AS [Name]
FROM [ValueObjects].[ProfessionalBodies] AS [professionalBody]
ORDER BY [professionalBody].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListProfessionalBodies]', 'Executed'