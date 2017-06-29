IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[GetProcedureLogs]')
DROP PROCEDURE [EPONS].[GetProcedureLogs] 
GO

CREATE PROCEDURE [EPONS].[GetProcedureLogs] 
AS
SELECT 
[Name] AS [ProcedureName],
COUNT(*) AS [Count],
MAX([Timestamp]) AS [LastExecutedTimestamp],
DATEDIFF(SECOND, MAX([Timestamp]), GETDATE()) / 60,
DATEDIFF(SECOND, MAX([Timestamp]), GETDATE()) - (CONVERT(INT, DATEDIFF(SECOND, MAX([Timestamp]), GETDATE()) / 60) * 60)
FROM [Audit].[Log]
GROUP BY [Name]
ORDER BY MAX([Timestamp]) DESC
