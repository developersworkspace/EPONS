IF OBJECT_ID('[Visit].[Details]', 'U') IS NOT NULL 
  DROP TABLE [Visit].[Details]; 
  
CREATE TABLE [Visit].[Details](
	[VisitId] UNIQUEIDENTIFIER NOT NULL,
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[Timestamp] DATE NOT NULL,
	[DailyNotes] TEXT NULL,
	[ProgressNotes] TEXT NULL,
	[UserId] UNIQUEIDENTIFIER NULL,
	[Temperature] FLOAT NULL,
	[HeartRate] INT NULL,
	[BloodPressureSystolic] INT NULL,
	[BloodPressureDiastolic] INT NULL,
	[RespiratoryRate] INT NULL,
	[PulseOximetry] INT NULL,
	[Glucose] FLOAT NULL,
	[IsPrivate] [bit] NOT NULL,
	[EpisodeOfCareId] UNIQUEIDENTIFIER NULL
)