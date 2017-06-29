IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateAdminMessage]')
DROP PROCEDURE [EPONS].[CreateAdminMessage] 
GO

CREATE PROCEDURE [EPONS].[CreateAdminMessage] 
@title VARCHAR(255),
@message VARCHAR(MAX),
@fromTimestamp DATETIME,
@toTimestamp DATETIME
AS

INSERT INTO [Admin].[Messages]
           ([MessageId]
           ,[Title]
           ,[Message]
           ,[FromTimestamp]
           ,[ToTimestamp]
           ,[CreatedTimestamp])
     VALUES
           (NEWID()
           ,@title
           ,@message
           ,@fromTimestamp
           ,@toTimestamp
           ,GETDATE())

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateAdminMessage]', 'Executed'