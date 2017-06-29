IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindCompletedEpisodesOfCare]')
DROP PROCEDURE [EPONS].[FindCompletedEpisodesOfCare] 
GO

CREATE PROCEDURE [EPONS].[FindCompletedEpisodesOfCare]   
    @patientId UNIQUEIDENTIFIER,   
    @facilityId UNIQUEIDENTIFIER  
AS 
SELECT 
[AllocationTimestamp],
[DeallocationTimestamp],
[ReasonForAdmissionId],
[ReasonForAdmissionTimestamp],
[AdmissionTypeId],
[DischargeTypeId],
(
SELECT 
TOP 1
[ImpairmentGroupId]
FROM [Audit].[PatientImpairmentGroup]
WHERE [PatientId] = @patientId
AND [AuditType] = 'I'
AND [AuditTimestamp] BETWEEN [AllocationTimestamp] AND [DeallocationTimestamp]
ORDER BY [AuditTimestamp] DESC
)
FROM [Patient].[EpisodesOfCare]
WHERE [PatientId] = @patientId
AND [FacilityId] = @facilityId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindCompletedEpisodesOfCare]', 'Executed'