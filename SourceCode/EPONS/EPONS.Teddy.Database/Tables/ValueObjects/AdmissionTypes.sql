IF OBJECT_ID('[ValueObjects].[AdmissionTypes]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[AdmissionTypes]; 
  
CREATE TABLE [ValueObjects].[AdmissionTypes] (
	[AdmissionTypeId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)