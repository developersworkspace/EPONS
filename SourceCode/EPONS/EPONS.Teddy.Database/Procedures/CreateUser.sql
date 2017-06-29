IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[CreateUser]')
DROP PROCEDURE [EPONS].[CreateUser] 
GO

CREATE PROCEDURE [EPONS].[CreateUser] 
@username VARCHAR(255),
@emailAddress VARCHAR(255),
@password VARCHAR(255)
AS
DECLARE @userId UNIQUEIDENTIFIER

SET @userId = NEWID()


INSERT INTO [User].[Details]
(
[UserId],
[EmailAddress],
[IsSuperAdmin]
)
VALUES 
(
@userId,
@emailAddress,
0
)

INSERT INTO [User].[Credentials]
(
[UserId],
[Username],
[Password],
[InvalidLoginAttempts],
[Locked]
)
VALUES
(
@userId,
@username,
@password,
0,
1
)


SELECT @userId AS [Id]

EXEC [Audit].[CreateLogEntry] '[EPONS].[CreateUser]', 'Executed'