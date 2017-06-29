IF OBJECT_ID('[Patient].[SupportServices]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[SupportServices]; 

CREATE TABLE [Patient].[SupportServices] (
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[SupportServiceId] UNIQUEIDENTIFIER NOT NULL,
	[Text] VARCHAR(256) NULL
)

