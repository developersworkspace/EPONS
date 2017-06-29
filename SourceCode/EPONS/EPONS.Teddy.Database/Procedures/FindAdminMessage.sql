IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindAdminMessage]')
DROP PROCEDURE [EPONS].[FindAdminMessage] 
GO

CREATE PROCEDURE [EPONS].[FindAdminMessage] 
AS
SELECT TOP 1 [Title], [Message] 
FROM [Admin].[Messages]
WHERE GETDATE() BETWEEN [FromTimestamp] AND [ToTimestamp]
ORDER BY [CreatedTimestamp] DESC

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindAdminMessage]', 'Executed'

--EXEC [EPONS].[CreateAdminMessage] 'Zeta and Epsilon Fixes', 'We have fixed the Zeta and Epsilon measurement tools. If you still experience issues, please contact our development team.', '2017-01-03 16:00', '2017-01-04 17:00'