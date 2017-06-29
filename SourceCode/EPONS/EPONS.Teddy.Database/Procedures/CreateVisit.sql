IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateVisit]')
DROP PROCEDURE [EPONS].[CreateVisit] 
GO

CREATE PROCEDURE [EPONS].[CreateVisit] 
@patientId UNIQUEIDENTIFIER,
@timestamp DATETIME,
@dailyNotes TEXT,
@username VARCHAR(255),
@temperature FLOAT,
@heartRate INT,
@bloodPressureSystolic INT,
@bloodPressureDiastolic INT,
@respiratoryRate INT,
@pulseOximetry INT,
@glucose FLOAT,
@progressNotes TEXT,
@isPrivate BIT,
@impairmentGroupId UNIQUEIDENTIFIER,
@episodeOfCareId UNIQUEIDENTIFIER
AS

DECLARE @userId UNIQUEIDENTIFIER
DECLARE @visitId UNIQUEIDENTIFIER

SET @visitId = NEWID()

SELECT TOP 1 @userId = [UserId] FROM [User].[Credentials] WHERE [Username] = @username

INSERT INTO [Visit].[Details]
(
[VisitId],
[PatientId],
[Timestamp],
[DailyNotes],
[ProgressNotes],
[UserId],
[Temperature],
[HeartRate],
[BloodPressureSystolic],
[BloodPressureDiastolic],
[RespiratoryRate],
[PulseOximetry],
[Glucose],
[IsPrivate],
[EpisodeOfCareId]
)
VALUES
(
@visitId,
@patientId,
@timestamp,
@dailyNotes,
@progressNotes,
@userId,
@temperature,
@heartRate,
@bloodPressureSystolic,
@bloodPressureDiastolic,
@respiratoryRate,
@pulseOximetry,
@glucose,
@isPrivate,
@episodeOfCareId
)


IF @impairmentGroupId IS NOT NULL
	UPDATE [Patient].[Details] 
	SET [ImpairmentGroupId] = @impairmentGroupId
	WHERE [PatientId] = @patientId

SELECT @visitId AS [Id]

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateVisit]', 'Executed'