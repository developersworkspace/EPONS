IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateFacility]')
DROP PROCEDURE [EPONS].[CreateFacility] 
GO

CREATE PROCEDURE [EPONS].[CreateFacility] 
@name VARCHAR(255),
@monthlyRate INT,
@avatar IMAGE,
@isFunder BIT,
@admissionTypeId UNIQUEIDENTIFIER
AS
DECLARE @facilityId UNIQUEIDENTIFIER

SET @facilityId = NEWID()

INSERT INTO [Facility].[Details]
(
[FacilityId],
[Name],
[MonthlyRate],
[Avatar],
[IsFunder],
[AdmissionTypeId]
)
VALUES (
	@facilityId,
	@name,
	@monthlyRate,
	@avatar,
	@isFunder,
	@admissionTypeId
)

  
SELECT @facilityId AS [Id]

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateFacility]', 'Executed'