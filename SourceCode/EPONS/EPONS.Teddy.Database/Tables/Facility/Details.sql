IF OBJECT_ID('[Facility].[Details]', 'U') IS NOT NULL 
  DROP TABLE [Facility].[Details]; 


CREATE TABLE [Facility].[Details](
	[FacilityId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256) NOT NULL,
	[MonthlyRate] INT NOT NULL,
	[Avatar] IMAGE NULL,
	[IsFunder] BIT NOT NULL,
	[AdmissionTypeId] UNIQUEIDENTIFIER,
)