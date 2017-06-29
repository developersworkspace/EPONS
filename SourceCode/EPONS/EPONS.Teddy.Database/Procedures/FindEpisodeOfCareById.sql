IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindEpisodeOfCareById]')
DROP PROCEDURE [EPONS].[FindEpisodeOfCareById] 
GO

CREATE PROCEDURE [EPONS].[FindEpisodeOfCareById] 
@episodeOfCareId UNIQUEIDENTIFIER
AS
SELECT 
[EpisodesOfCare].EpisodeOfCareId AS [Id],
[EpisodesOfCare].[PatientId] AS [PatientId],
[EpisodesOfCare].[FacilityId] AS [FacilityId],
[EpisodesOfCare].[AllocationNumber] AS [AllocationNumber],
[EpisodesOfCare].[AllocationTimestamp] AS [AllocationTimestamp],
[EpisodesOfCare].[DeallocationTimestamp] AS [DeallocationTimestamp],
[EpisodesOfCare].[ReasonForAdmissionId] AS [ReasonForAdmissionId],
[EpisodesOfCare].[ReasonForAdmissionTimestamp] AS [ReasonForAdmissionTimestamp],
[EpisodesOfCare].[AdmissionTypeId] AS [AdmissionTypeId],
[EpisodesOfCare].[DischargeTypeId] AS [DischargeTypeId],
[EpisodesOfCare].[ReferringDoctorId] AS [ReferringDoctorId],
[EpisodesOfCare].[AttendingDoctorId] AS [AttendingDoctorId] 

FROM [Patient].[EpisodesOfCare] AS [EpisodesOfCare]
WHERE [EpisodesOfCare].EpisodeOfCareId = @episodeOfCareId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindEpisodeOfCareById]', 'Executed'