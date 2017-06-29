IF OBJECT_ID('[Patient].[EpisodesOfCare]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[EpisodesOfCare]; 

CREATE TABLE [Patient].[EpisodesOfCare] (
	[EpisodesOfCareId] UNIQUEIDENTIFIER NOT NULL,
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[FacilityId] UNIQUEIDENTIFIER NOT NULL,
	[AllocationNumber] VARCHAR(255) NULL,
	[AllocationTimestamp] DATETIME NOT NULL,
	[DeallocationTimestamp] DATETIME NULL,
	[ReasonForAdmissionId] UNIQUEIDENTIFIER NULL,
	[ReasonForAdmissionTimestamp] DATETIME NULL,
	[AdmissionTypeId] UNIQUEIDENTIFIER NULL,
	[DischargeTypeId] UNIQUEIDENTIFIER NULL,
	[ReferringDoctorId] INT NULL,
	[AttendingDoctorId] INT NULL
)

