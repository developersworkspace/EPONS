IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindVisitsByPatientIdAndDateRange]')
DROP PROCEDURE [EPONS].[FindVisitsByPatientIdAndDateRange] 
GO

CREATE PROCEDURE [EPONS].[FindVisitsByPatientIdAndDateRange] 
@patientId UNIQUEIDENTIFIER,
@startDate DATE,
@endDate DATE
AS
SELECT 
[visit].[Timestamp] AS [Timestamp],
[user].[Firstname] + ' ' + [user].[Lastname] AS [User],
[visit].[DailyNotes] AS [DailyNotes],
[visit].[ProgressNotes] AS [ProgressNotes],
[visit].[HeartRate] AS [HeartRate],
[visit].[Temperature] AS [Temperature],
[visit].[BloodPressureDiastolic] AS [BloodPressureDiastolic],
[visit].[BloodPressureSystolic] AS [BloodPressureSystolic],
[visit].[Glucose] AS [Glucose],
[visit].[PulseOximetry] AS [PulseOximetry],
[visit].[RespiratoryRate] AS [RespiratoryRate]
FROM [Visit].[Details] AS [visit]
INNER JOIN [User].[Details] AS [user]
ON [user].[UserId] = [visit].[UserId]
AND
[visit].[PatientId] = @patientId
AND
CONVERT(DATE, [visit].[Timestamp]) >= @startDate 
AND
CONVERT(DATE, [visit].[Timestamp]) <= @endDate
ORDER BY [Timestamp] ASC 

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindVisitsByPatientIdAndDateRange]', 'Executed'