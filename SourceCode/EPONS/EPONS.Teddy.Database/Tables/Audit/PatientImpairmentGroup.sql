IF OBJECT_ID('[Audit].[PatientImpairmentGroup]', 'U') IS NOT NULL 
  DROP TABLE [Audit].[PatientImpairmentGroup]; 


CREATE TABLE [Audit].[PatientImpairmentGroup](
	[PatientId] UNIQUEIDENTIFIER NOT NULL,
	[ImpairmentGroupId] UNIQUEIDENTIFIER NULL,
	[AuditTimestamp] DATETIME2 NOT NULL,
	[AuditType] VARCHAR(25) NOT NULL)
