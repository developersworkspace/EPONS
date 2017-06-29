IF OBJECT_ID('[Patient].[TeamMembers]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[TeamMembers]; 

CREATE TABLE [Patient].[TeamMembers] (
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[FacilityId] UNIQUEIDENTIFIER NOT NULL,
	[AllocationTimestamp] DATETIME NOT NULL,
	[DeallocationTimestamp] DATETIME NULL,
)

