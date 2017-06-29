CREATE TRIGGER [Patient].[AuditTrigger] ON [Patient].[Details]
FOR UPDATE, DELETE
AS

	INSERT INTO [Audit].[PatientImpairmentGroup]
           ([PatientId]
		   ,[ImpairmentGroupId]
           ,[AuditTimestamp]
           ,[AuditType])
	SELECT [PatientId], [ImpairmentGroupId], GETDATE(), 'I'  FROM [inserted] AS I

	INSERT INTO [Audit].[PatientImpairmentGroup]
           ([PatientId]
		   ,[ImpairmentGroupId]
           ,[AuditTimestamp]
           ,[AuditType])
	SELECT [PatientId], [ImpairmentGroupId], GETDATE(), 'D'  FROM [deleted] AS D