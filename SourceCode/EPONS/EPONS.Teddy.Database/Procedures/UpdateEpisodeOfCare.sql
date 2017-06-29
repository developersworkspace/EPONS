IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[UpdateEpisodeOfCare]')
DROP PROCEDURE [EPONS].[UpdateEpisodeOfCare] 
GO

CREATE PROCEDURE [EPONS].[UpdateEpisodeOfCare] 
@episodeOfCareId UNIQUEIDENTIFIER,
@patientId UNIQUEIDENTIFIER,
@facilityId UNIQUEIDENTIFIER,
@reasonForAdmissionId UNIQUEIDENTIFIER,
@reasonForAdmissionTimestamp DATE,
@allocationNumber VARCHAR(255),
@impairmentGroupId UNIQUEIDENTIFIER,
@admissionTypeId UNIQUEIDENTIFIER,
@referringDoctorId INT,
@attendingDoctorId INT
AS
UPDATE [Patient].[EpisodesOfCare]
SET [PatientId]=@patientId,
	[FacilityId]=@facilityId,
	[AllocationNumber]=@allocationNumber,
	[AllocationTimestamp]=GETDATE(),
	[DeallocationTimestamp]=NULL,
	[ReasonForAdmissionId]=@reasonForAdmissionId,
	[ReasonForAdmissionTimestamp]=@reasonForAdmissionTimestamp,
	[AdmissionTypeId]=@admissionTypeId,
	[DischargeTypeId]=NULL,
	[ReferringDoctorId]=@referringDoctorId,
	[AttendingDoctorId]=@attendingDoctorId
WHERE EpisodeOfCareId = @episodeOfCareId


EXEC [Audit].[CreateLogEntry] '[EPONS].[UpdateEpisodeOfCare]', 'Executed'