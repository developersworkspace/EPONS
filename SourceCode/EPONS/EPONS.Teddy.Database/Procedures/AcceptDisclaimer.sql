IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[AcceptDisclaimer]')
DROP PROCEDURE [EPONS].[AcceptDisclaimer] 
GO

CREATE PROCEDURE [EPONS].[AcceptDisclaimer] 
@username VARCHAR(25)
AS
UPDATE [userDetails]
SET
[DisclaimerAgreeTimestamp] = GETDATE()
FROM [User].[Details] AS [userDetails]
INNER JOIN [User].[Credentials] AS [userCredentials]
ON [userCredentials].[UserId] = [userDetails].[UserId]
AND [userCredentials].[Username] = @username

EXEC [Audit].[CreateLogEntry] '[EPONS].[AcceptDisclaimer]', 'Executed'