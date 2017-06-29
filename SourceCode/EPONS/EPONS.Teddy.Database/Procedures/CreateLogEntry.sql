IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateLogEntry]')
DROP PROCEDURE [Audit].[CreateLogEntry] 
GO

CREATE PROCEDURE [Audit].[CreateLogEntry]
@name VARCHAR(255),
@message VARCHAR(255)
AS
INSERT INTO [Audit].[Log]
           ([LogId]
           ,[Name]
           ,[Message]
           ,[Timestamp])
     VALUES
           (NEWID()
           ,@name
           ,@message
           ,GETDATE())