IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindTeamMembersByPatientId]')
DROP PROCEDURE [EPONS].[FindTeamMembersByPatientId] 
GO

CREATE PROCEDURE [EPONS].[FindTeamMembersByPatientId] 
@patientId UNIQUEIDENTIFIER
AS
SELECT 
[user].[UserId] AS [UserId],
[facility].[Name] AS [Facility],
[permission].[Name] AS [Permission],
[user].[Firstname] AS [Firstname],
[user].[Lastname] AS [Lastname],
[teamMember].[AllocationTimestamp] AS [AllocationDate],
[teamMember].[DeallocationTimestamp] AS [DeallocationDate]
FROM [Patient].[TeamMembers] AS [teamMember]
INNER JOIN [User].[Details] AS [user]
ON 
[teamMember].[PatientId] = @patientId
AND
[user].[UserId] = [teamMember].[UserId]
INNER JOIN [Facility].[Details] AS [facility]
ON [facility].[FacilityId] = [teamMember].[FacilityId]
INNER JOIN [User].[Permissions] AS [userPermission]
ON [userPermission].[UserId] = [user].[UserId]
AND 
[userPermission].[FacilityId] = [facility].[FacilityId]
INNER JOIN [ValueObjects].[Permissions] AS [permission]
ON [permission].[PermissionId] = [userPermission].[PermissionId] 
ORDER BY [teamMember].[DeallocationTimestamp] ASC, [teamMember].[AllocationTimestamp] DESC

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindTeamMembersByPatientId]', 'Executed'
