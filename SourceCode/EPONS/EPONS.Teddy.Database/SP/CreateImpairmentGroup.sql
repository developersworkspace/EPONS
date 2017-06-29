CREATE PROCEDURE [dbo].[CreateImairmentGroup]
@code VARCHAR(16),
@name VARCHAR(255)
AS
DECLARE @impairmentGroupId UNIQUEIDENTIFIER

SELECT TOP 1
@impairmentGroupId = [impairmentGroup].[ImpairmentGroupId] 
FROM [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
WHERE RTRIM([impairmentGroup].[Code]) = @code

IF (@impairmentGroupId IS NULL)
	INSERT INTO [ValueObjects].[ImpairmentGroups] 
	(
		[ImpairmentGroupId],
		[Code],
		[Name],
		[SortOrder]
	)
	VALUES 
	(
	NEWID(),
	@code,
	@name,
	0
	);

IF (@impairmentGroupId IS NULL)
	SELECT *, ROW_NUMBER() OVER(ORDER BY CAST('/'+REPLACE(RTRIM([Code]),'.','/')+'/' as hierarchyID) ASC) AS Row# 
	INTO #temp
	FROM [ValueObjects].[ImpairmentGroups]
	ORDER BY CAST('/'+REPLACE(RTRIM([Code]),'.','/')+'/' AS HIERARCHYID)

IF (@impairmentGroupId IS NULL)
	UPDATE [impairmentGroup]
	SET 
	[impairmentGroup].[SortOrder] = [Row#],
	[impairmentGroup].[Code] = RTRIM([temp].[Code])
	FROM #temp AS temp
	INNER JOIN [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
	ON [impairmentGroup].[ImpairmentGroupId] = [temp].[ImpairmentGroupId]

IF (@impairmentGroupId IS NULL)
	DROP TABLE #temp
