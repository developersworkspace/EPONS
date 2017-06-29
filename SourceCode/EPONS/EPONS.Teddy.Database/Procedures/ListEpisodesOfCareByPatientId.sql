IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListEpisodesOfCareByPatientId]')
DROP PROCEDURE [EPONS].[ListEpisodesOfCareByPatientId] 
GO

CREATE PROCEDURE [EPONS].[ListEpisodesOfCareByPatientId] 
@patientId UNIQUEIDENTIFIER,
@facilityId UNIQUEIDENTIFIER
AS
SELECT 
[episodeOfCare].[EpisodeOfCareId],
[episodeOfCare].[AllocationTimestamp],
[episodeOfCare].[DeallocationTimestamp],
[episodeOfCare].[ReasonForAdmissionId],
[episodeOfCare].[AllocationNumber],
[icd10Code].[Code] + ' - ' + [icd10Code].[Name] AS [ReasonForAdmissionName],
[ReasonForAdmissionTimestamp],
[episodeOfCare].[AdmissionTypeId],
[episodeOfCare].[DischargeTypeId],
(
	SELECT TOP 1 [ImpairmentGroupId] 
	FROM [Audit].[PatientImpairmentGroup] AS [patientImpairmentGroup] 
	WHERE [AuditTimestamp] >= [AllocationTimestamp]
	AND [AuditType] = 'I'
	AND [PatientId] = [episodeOfCare].[PatientId]
) AS [ImpairmentGroupId],
(
	SELECT TOP 1 [impairmentGroup].[Code] + '.' + [impairmentGroup].[Name]
	FROM [Audit].[PatientImpairmentGroup] AS [patientImpairmentGroup]
	INNER JOIN [ValueObjects].[ImpairmentGroups] AS [impairmentGroup] 
	ON [impairmentGroup].[ImpairmentGroupId] = [patientImpairmentGroup].[ImpairmentGroupId]
	WHERE [AuditTimestamp] >= [AllocationTimestamp]
	AND [AuditType] = 'I'
	AND [PatientId] = [episodeOfCare].[PatientId]
) AS [ImpairmentGroup],
[episodeOfCare].[FacilityId] AS [FacilityId],
[facility].[Name] AS [Facility],
(select [Name] from [Patient].[Doctor] where [Id] = [episodeOfCare].[ReferringDoctorId]) AS [ReferringDoctorName],
(select [Name] from [Patient].[Doctor] where [Id] = [episodeOfCare].[AttendingDoctorId]) AS [AttendingDoctorName]
FROM [Patient].[EpisodesOfCare] AS [episodeOfCare]
LEFT JOIN [ValueObjects].[ICD10Codes] AS [icd10Code]
ON [icd10Code].[ICD10CodeId] = [episodeOfCare].[ReasonForAdmissionId]
LEFT JOIN [Facility].[Details] AS [facility]
ON [facility].[FacilityId] = [episodeOfCare].[FacilityId]
WHERE
[patientId] = @patientId
AND
[episodeOfCare].[FacilityId] = @facilityId
ORDER BY [episodeOfCare].[AllocationTimestamp] DESC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListEpisodesOfCareByPatientId]', 'Executed'