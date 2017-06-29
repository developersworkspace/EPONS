IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindFacilityById]')
DROP PROCEDURE [EPONS].[FindFacilityById] 
GO

CREATE PROCEDURE [EPONS].[FindFacilityById] 
@facilityId UNIQUEIDENTIFIER
AS
SELECT 
[facility].[FacilityId] AS [Id],
[facility].[Name] AS [Name],
[facility].[MonthlyRate] AS [MonthlyRate],
[facility].[IsFunder] AS [IsFunder],
[facility].[AdmissionTypeId] AS [AdmissionTypeId] 
FROM [Facility].[Details] AS [facility]
WHERE [facility].[FacilityId] = @facilityId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindFacilityById]', 'Executed'