--CREATE PROCEDURE [dbo].[CreateICD10CodeMap]
--@impairmentGroupQuery VARCHAR(16),
--@icd10CodeQuery VARCHAR(16)
--AS
--DECLARE @impairmentGroupId UNIQUEIDENTIFIER
--DECLARE @icd10CodeId UNIQUEIDENTIFIER

--SELECT TOP 1
--@impairmentGroupId = [impairmentGroup].[ImpairmentGroupId] 
--FROM [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
--WHERE [impairmentGroup].[Code] = @impairmentGroupQuery

--SELECT TOP 1
--@icd10CodeId = [icd10Code].[ICD10CodeId] 
--FROM [ValueObjects].[ICD10Codes] AS [icd10Code]
--WHERE [icd10Code].[Code] = @icd10CodeQuery

--IF (@icd10CodeId IS NULL)
--	PRINT('Could not find ICD10 Code (' + @icd10CodeQuery + ')')

--IF (@impairmentGroupId IS NULL)
--	PRINT('Could not find Impairment Group Code (' + @impairmentGroupQuery + ')')

--IF (@icd10CodeId IS NOT NULL AND @impairmentGroupId IS NOT NULL)
--	INSERT INTO [ValueObjects].[ICD10CodeToIGMap]
--			   ([ICD10CodeId]
--			   ,[ImpairmentGroupId])
--		 VALUES
--			   (@icd10CodeId
--			   ,@impairmentGroupId)
