IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[DeallocateTeamMember]')
DROP PROCEDURE [EPONS].[DeallocateTeamMember] 
GO

CREATE PROCEDURE [EPONS].[DeallocateTeamMember] 
@patientId UNIQUEIDENTIFIER,
@userId UNIQUEIDENTIFIER
AS

UPDATE [Patient].[TeamMembers]
SET [DeallocationTimestamp] = GETDATE()
WHERE [PatientId] = @patientId
AND [UserId] = @userId
AND [DeallocationTimestamp] IS NULL

EXEC [Audit].[CreateLogEntry] '[EPONS].[DeallocateTeamMember]', 'Executed'