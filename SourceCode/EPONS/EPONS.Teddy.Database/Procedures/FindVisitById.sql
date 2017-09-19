IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindVisitById]')
DROP PROCEDURE [EPONS].[FindVisitById] 
GO

CREATE PROCEDURE [EPONS].[FindVisitById] 
@visitId UNIQUEIDENTIFIER
AS 
SELECT 
[visit].[VisitId] AS [Id],
[visit].[UserId] AS [UserId],
[visit].[PatientId] AS [PatientId],
[visit].[Timestamp] AS [Timestamp],
[visit].[ProgressNotes] AS [ProgressNotes],
[visit].[DailyNotes] AS [DailyNotes],
ROUND([visit].[HeartRate], 2) AS [HeartRate],
ROUND([visit].[Temperature], 2) AS [Temperature],
ROUND([visit].[BloodPressureDiastolic], 2) AS [BloodPressureDiastolic],
ROUND([visit].[BloodPressureSystolic], 2) AS [BloodPressureSystolic],
ROUND([visit].[Glucose], 2) AS [Glucose],
ROUND([visit].[PulseOximetry], 2) AS [PulseOximetry],
ROUND([visit].[RespiratoryRate], 2) AS [RespiratoryRate],
[visit].[IsPrivate] AS [IsPrivate],
[impairmentGroup].[ImpairmentGroupId] AS [ImpairmentGroupId],
[impairmentGroup].[Code] + ' - ' + [impairmentGroup].[Name]  AS [ImpairmentGroup],
[visit].[DurationofVisitinMinutes] AS [DurationOfVisit]
FROM [Visit].[Details] AS [visit]
LEFT JOIN [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
ON [impairmentGroup].[ImpairmentGroupId] = (SELECT TOP 1 [patientImpairmentGroup].[ImpairmentGroupId] FROM [Audit].[PatientImpairmentGroup] AS [patientImpairmentGroup] WHERE [patientImpairmentGroup].[AuditTimestamp] <= [visit].[Timestamp] ORDER BY [patientImpairmentGroup].[AuditTimestamp] DESC)
WHERE [visit].[VisitId] = @visitId

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindVisitById]', 'Executed'