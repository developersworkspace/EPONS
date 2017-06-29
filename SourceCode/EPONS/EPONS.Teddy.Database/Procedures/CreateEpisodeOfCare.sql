IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateEpisodeOfCare]')
DROP PROCEDURE [EPONS].[CreateEpisodeOfCare] 
GO

CREATE PROCEDURE [EPONS].[CreateEpisodeOfCare] 

@patientId UNIQUEIDENTIFIER,

@facilityId UNIQUEIDENTIFIER,

@reasonForAdmissionId UNIQUEIDENTIFIER,

@reasonForAdmissionTimestamp DATE,

@allocationNumber VARCHAR(255),

@impairmentGroupId UNIQUEIDENTIFIER,

@admissionTypeId UNIQUEIDENTIFIER,

@referringDoctorId INT,

@attendingDoctorId INT,

@userId UNIQUEIDENTIFIER

AS

INSERT INTO [Patient].[EpisodesOfCare]

	(
	ImpairmentGroupId,

	[PatientId],

	[FacilityId],

	[AllocationTimestamp],

	[DeallocationTimestamp],

	[ReasonForAdmissionId],

	[ReasonForAdmissionTimestamp],

	[AdmissionTypeId],

	[DischargeTypeId],

	[AllocationNumber],

	[ReferringDoctorId],

	[AttendingDoctorId],

	[CreatedByUserId]

	)

	VALUES

	(
	@impairmentGroupId,

	@patientId,

	@facilityId,

	GETDATE(),

	NULL,

	@reasonForAdmissionId,

	@reasonForAdmissionTimestamp,

	@admissionTypeId,

	NULL,

	@allocationNumber,

	@referringDoctorId,

	@attendingDoctorId,

	@userId

	)

	INSERT INTO [Patient].[TeamMembers] (
	[PatientId],
	[FacilityId],
	[UserId],
	[AllocationTimestamp]
)
VALUES (
	@patientId,
	@facilityId,
	@userId,
	GETDATE()
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateEpisodeOfCare]', 'Executed'