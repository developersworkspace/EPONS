IF OBJECT_ID('[ValueObjects].[DischargeTypes]', 'U') IS NOT NULL 
  DROP TABLE [ValueObjects].[DischargeTypes]; 
  
CREATE TABLE [ValueObjects].[DischargeTypes] (
	[DischargeTypeId] UNIQUEIDENTIFIER NOT NULL,
	[Name] VARCHAR(256)
)