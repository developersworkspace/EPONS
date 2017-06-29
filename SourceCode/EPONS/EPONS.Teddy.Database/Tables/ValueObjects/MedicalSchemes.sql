IF OBJECT_ID('[ValueObjects].[MedicalSchemes]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[MedicalSchemes]; 
  
  CREATE TABLE [ValueObjects].[MedicalSchemes] (
	[MedicalSchemeId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)