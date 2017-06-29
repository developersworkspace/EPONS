﻿IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P'  AND SCHEMA_NAME([schema_id]) = 'EPONS' AND QUOTENAME(name) = '[FindPatientById]')
DROP PROCEDURE [EPONS].[FindPatientById] 
GO

CREATE PROCEDURE [EPONS].[FindPatientById] 
@patientId UNIQUEIDENTIFIER
AS
SELECT 
[patient].[PatientId] AS [Id],
[patient].[Firstname] AS [Firstname],
[patient].[Lastname] AS [Lastname],
[patient].[DateOfBirth] AS [DateOfBirth],
[patient].[ContactNumber] AS [ContactNumber],
[patient].[IdentificationNumber] AS [IdentificationNumber],
[patient].[Street] AS [Street],
[patient].[PostalCode] AS [PostalCode],
[patient].[NameOfNextOfKin] AS [NameOfNextOfKin],
[patient].[EmailAddressOfNextOfKin] AS [EmailAddressOfNextOfKin],
[patient].[ContactNumberOfNextOfKin] AS [ContactNumberOfNextOfKin],
[patient].[RelationshipOfNextOfKin] AS [RelationshipOfNextOfKin],
[patient].[MedicalSchemeMembershipNumber] AS [MedicalSchemeNumber],
[patient].[GenderId] AS [GenderId],
[gender].[Name] AS [Gender],
[patient].[RaceId] AS [RaceId],
[race].[Name] AS [Race],
[patient].[TitleId] AS [TitleId],
[title].[Name] AS [Title],
[country].[CountryId] AS [CountryId],
[country].[Name] AS [Country],
[province].[ProvinceId] AS [ProvinceId],
[province].[Name] AS [Province],
[city].[CityId] AS [CityId],
[city].[Name] AS [City],
[residentialEnvironment].[ResidentialEnvironmentId] AS [ResidentialEnvironmentId],
[residentialEnvironment].[Name] AS [ResidentialEnvironment],
[medicalScheme].[MedicalSchemeId] AS [MedicalSchemeId],
[medicalScheme].[Name] AS [MedicalScheme],
[patient].[ImpairmentGroupId] AS [ImpairmentGroupId],
[impairmentGroup].[Name] AS [ImpairmentGroup]
FROM [Patient].[Details] AS [patient]
LEFT JOIN [ValueObjects].[Genders] AS [gender]
ON [gender].[GenderId] = [patient].[GenderId]
LEFT JOIN [ValueObjects].[Races] AS [race]
ON [race].[RaceId] = [patient].[RaceId]
LEFT JOIN [ValueObjects].[Titles] AS [title]
ON [title].[TitleId] = [patient].[TitleId]
LEFT JOIN [ValueObjects].[Cities] AS [city]
ON [city].[CityId] = [patient].[CityId]
LEFT JOIN [ValueObjects].[Provinces] AS [province]
ON [province].[ProvinceId] = [city].[ProvinceId]
LEFT JOIN [ValueObjects].[Countries] AS [country]
ON [country].[CountryId] = [province].[CountryId]
LEFT JOIN [ValueObjects].[ResidentialEnvironments] AS [residentialEnvironment]
ON [residentialEnvironment].[ResidentialEnvironmentId] = [patient].[ResidentialEnvironmentId]
LEFT JOIN [ValueObjects].[MedicalSchemes] AS [medicalScheme]
ON [medicalScheme].[MedicalSchemeId] = [patient].[MedicalSchemeId]
LEFT JOIN [ValueObjects].[ImpairmentGroups] AS [impairmentGroup]
ON [impairmentGroup].[ImpairmentGroupId] = [patient].[ImpairmentGroupId]
WHERE [patient].[PatientId] = @patientId


SELECT 
[patientSupportService].[SupportServiceId] AS [Id],
[supportService].[Name] AS [Name],
[patientSupportService].[Text] AS [Text]
FROM [Patient].[SupportServices] AS [patientSupportService]
INNER JOIN [ValueObjects].[SupportServices] AS [supportService]
ON [patientSupportService].[PatientId] = @patientId
AND
[supportService].[SupportServiceId] = [patientSupportService].[SupportServiceId]

EXEC [Audit].[CreateLogEntry] '[EPONS].[FindPatientById]', 'Executed'