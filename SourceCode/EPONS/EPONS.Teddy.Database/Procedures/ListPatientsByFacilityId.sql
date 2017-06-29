IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[ListPatientsByFacilityId]')
DROP PROCEDURE [EPONS].[ListPatientsByFacilityId] 
GO

CREATE PROCEDURE [EPONS].[ListPatientsByFacilityId] 
@facilityId UNIQUEIDENTIFIER
AS
SELECT
[patient].[PatientId] AS [Id],
[patient].[Firstname] AS [Firstname],
[patient].[Lastname] AS [Lastname],
[patient].[DateOfBirth] AS [DateOfBirth],
[patient].[IdentificationNumber] AS [IdentificationNumber],
[patient].[GenderId] AS [GenderId],
[gender].[Name] AS [Gender],
[patient].[RaceId] AS [RaceId],
[race].[Name] AS [Race],
[patient].[TitleId] AS [TitleId],
[title].[Name] AS [Title],
[medicalScheme].[Name] AS [MedicalScheme]
FROM [Patient].[Details] AS [patient]
LEFT JOIN [ValueObjects].[Genders] AS [gender]
ON [gender].[GenderId] = [patient].[GenderId]
LEFT JOIN [ValueObjects].[Races] AS [race]
ON [race].[RaceId] = [patient].[RaceId]
LEFT JOIN [ValueObjects].[Titles] AS [title]
ON [title].[TitleId] = [patient].[TitleId]
LEFT JOIN [ValueObjects].[MedicalSchemes] AS [medicalScheme]
ON [medicalScheme].[MedicalSchemeId] = [patient].[MedicalSchemeId]
LEFT JOIN [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
ON [impairmentGroup].[ImpairmentGroupId] = [patient].[ImpairmentGroupId] 
AND
(
	(
		SELECT COUNT(*) 
		FROM [Patient].[TeamMembers] 
		WHERE [PatientId] = [patient].[PatientId]
		AND [FacilityId] = @facilityId
	) > 0
)

EXEC [Audit].[CreateLogEntry] '[EPONS].[ListPatientsByFacilityId]', 'Executed'



