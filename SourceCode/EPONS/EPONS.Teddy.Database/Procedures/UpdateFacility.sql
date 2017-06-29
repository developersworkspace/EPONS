IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdateFacility]')
DROP PROCEDURE [EPONS].[UpdateFacility] 
GO

CREATE PROCEDURE [EPONS].[UpdateFacility] 
@facilityId UNIQUEIDENTIFIER,
@name VARCHAR(255),
@monthlyRate INT,
@admissionTypeId UNIQUEIDENTIFIER
AS

UPDATE [Facility].[Details]
SET [Name] = @name,
[MonthlyRate] = @monthlyRate,
[AdmissionTypeId] = @admissionTypeId
WHERE [FacilityId] = @facilityId

