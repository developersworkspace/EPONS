IF OBJECT_ID('[ValueObjects].[ProfessionalBodies]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[ProfessionalBodies]; 
  
  
CREATE TABLE [ValueObjects].[ProfessionalBodies] (
	[ProfessionalBodyId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)