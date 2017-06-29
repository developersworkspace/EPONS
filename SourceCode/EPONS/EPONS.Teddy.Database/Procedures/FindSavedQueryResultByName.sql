IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindSavedQueryResultByName]')
DROP PROCEDURE [EPONS].[FindSavedQueryResultByName] 
GO

CREATE PROCEDURE [EPONS].[FindSavedQueryResultByName] 
@name VARCHAR(255)
AS
DECLARE @query NVARCHAR(MAX)
SELECT TOP 1 @query = [Query] FROM [Admin].[SavedQueries] WHERE [Name] = @name
EXEC SP_EXECUTESQL @query


EXEC [Audit].[CreateLogEntry] '[EPONS].[FindSavedQueryResultByName]', 'Executed'