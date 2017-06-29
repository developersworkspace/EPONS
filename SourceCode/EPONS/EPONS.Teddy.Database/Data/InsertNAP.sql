BEGIN TRAN

DECLARE @measurementToolParentId UNIQUEIDENTIFIER
DECLARE @superAdminUserId UNIQUEIDENTIFIER
DECLARE @statusId UNIQUEIDENTIFIER
DECLARE @measurementToolId UNIQUEIDENTIFIER

SELECT TOP 1 @superAdminUserId = [AccountId] FROM [dbo].[Account]

SELECT TOP 1 @statusId = [ListItemId] FROM [dbo].[ListItem] WHERE [Name] = 'Active'

SELECT TOP 1 @measurementToolParentId = [ListItemId] FROM [dbo].[ListItem] WHERE [Name] = 'Scale'

SET @measurementToolId = NEWID()

INSERT INTO [dbo].[ListItem] (
[ListItemId],
[ParentId],
[Name],
[Description],
[Code],
[Value],
[SortOrder],
[Icon],
[LastUpdateAccountId],
[LastUpdateTimestamp],
[StatusId]
)
VALUES
(
@measurementToolId,
@measurementToolParentId,
'NAP',
'NAP',
NULL,
'Simple',
6,
NULL, 
@superAdminUserId,
GETDATE(),
@statusId
)


--------

INSERT INTO [dbo].[ListItem] (
[ListItemId],
[ParentId],
[Name],
[Description],
[Code],
[Value],
[SortOrder],
[Icon],
[LastUpdateAccountId],
[LastUpdateTimestamp],
[StatusId]
)
VALUES
(
@measurementToolId,
@measurementToolParentId,
'NAP',
'NAP',
NULL,
'Simple',
6,
NULL, 
@superAdminUserId,
GETDATE(),
@statusId
)


ROLLBACK TRAN

  