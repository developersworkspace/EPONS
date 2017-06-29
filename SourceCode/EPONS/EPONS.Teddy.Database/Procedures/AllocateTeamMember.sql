IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[AllocateTeamMember]')
DROP PROCEDURE [EPONS].[AllocateTeamMember] 
GO

CREATE PROCEDURE [EPONS].[AllocateTeamMember] 
@userId UNIQUEIDENTIFIER,
@patientId UNIQUEIDENTIFIER,
@facilityId UNIQUEIDENTIFIER
AS

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


EXEC [Audit].[CreateLogEntry] '[EPONS].[AllocateTeamMember]', 'Executed'