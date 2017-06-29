IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListFacilities]')
DROP PROCEDURE [EPONS].[ListFacilities] 
GO

CREATE PROCEDURE [EPONS].[ListFacilities] 
AS
SELECT 
[facility].[FacilityId] AS [Id],
[facility].[Name] AS [Name],
[facility].[IsFunder] AS [IsFunder]
FROM [Facility].[Details] AS [facility]
ORDER BY [facility].[Name]  ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListFacilities]', 'Executed'