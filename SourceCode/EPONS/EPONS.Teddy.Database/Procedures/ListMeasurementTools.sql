IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListMeasurementTools]')
DROP PROCEDURE [EPONS].[ListMeasurementTools] 
GO

CREATE PROCEDURE [EPONS].[ListMeasurementTools] 
AS
SELECT 
[measurementTool].[MeasurementToolId] AS [Id],
[measurementTool].[Name] AS [Name]
FROM [ValueObjects].[MeasurementTools] AS [measurementTool]
ORDER BY [Name] ASC

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListMeasurementTools]', 'Executed'