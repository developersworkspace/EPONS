IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListDischargeTypes]')
DROP PROCEDURE [EPONS].[ListDischargeTypes] 
GO

CREATE PROCEDURE [EPONS].[ListDischargeTypes] 
AS
SELECT 
[dischargeType].[DischargeTypeId] AS [Id],
[dischargeType].[Name] AS [Name]
FROM [ValueObjects].[DischargeTypes] AS [dischargeType]
ORDER BY [dischargeType].[Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListDischargeTypes]', 'Executed'