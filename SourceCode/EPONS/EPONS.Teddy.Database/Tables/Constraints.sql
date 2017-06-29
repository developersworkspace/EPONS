BEGIN TRAN 

DELETE [visitScoreValue]
FROM [Visit].[ScoreValues] AS [visitScoreValue]
WHERE
(
	SELECT COUNT(*) FROM [ValueObjects].[ScoreValues] WHERE [ScoreValueId] = [visitScoreValue].[ScoreValueId]
) = 0

-- ValueObjects.Genders
ALTER TABLE [ValueObjects].[Genders]
ADD PRIMARY KEY ([GenderId])

-- ValueObjects.Races
ALTER TABLE [ValueObjects].[Races]
ADD PRIMARY KEY ([RaceId])

-- ValueObjects.MedicalSchemes
ALTER TABLE [ValueObjects].[MedicalSchemes]
ADD PRIMARY KEY ([MedicalSchemeId])

-- ValueObjects.Titles
ALTER TABLE [ValueObjects].[Titles]
ADD PRIMARY KEY ([TitleId])

-- ValueObjects.Countries
ALTER TABLE [ValueObjects].[Countries]
ADD PRIMARY KEY ([CountryId])

-- ValueObjects.Provinces
ALTER TABLE [ValueObjects].[Provinces]
ADD PRIMARY KEY ([ProvinceId])

ALTER TABLE [ValueObjects].[Provinces]
ADD FOREIGN KEY ([CountryId])
REFERENCES [ValueObjects].[Countries]([CountryId])

-- ValueObjects.Cities
ALTER TABLE [ValueObjects].[Cities]
ADD PRIMARY KEY ([CityId])

ALTER TABLE [ValueObjects].[Cities]
ADD FOREIGN KEY ([ProvinceId])
REFERENCES [ValueObjects].[Provinces]([ProvinceId])

-- ValueObjects.ResidentialEnvironments
ALTER TABLE [ValueObjects].[ResidentialEnvironments]
ADD PRIMARY KEY ([ResidentialEnvironmentId])

-- ValueObjects.ImpairmentGroups
ALTER TABLE [ValueObjects].[ImpairmentGroups]
ADD PRIMARY KEY ([ImpairmentGroupId])

-- ValueObjects.ICD10Codes
ALTER TABLE [ValueObjects].[ICD10Codes]
ADD PRIMARY KEY ([ICD10CodeId])

-- ValueObjects.AdmissionTypes
ALTER TABLE [ValueObjects].[AdmissionTypes]
ADD PRIMARY KEY ([AdmissionTypeId])

-- ValueObjects.DischargeTypes
ALTER TABLE [ValueObjects].[DischargeTypes]
ADD PRIMARY KEY ([DischargeTypeId])

-- ValueObjects.MeasurementTools
ALTER TABLE [ValueObjects].[MeasurementTools]
ADD PRIMARY KEY ([MeasurementToolId])

-- ValueObjects.Frequencies
ALTER TABLE [ValueObjects].[Frequencies]
ADD PRIMARY KEY ([FrequencyId])

-- ValueObjects.SupportServices
ALTER TABLE [ValueObjects].[SupportServices]
ADD PRIMARY KEY ([SupportServiceId])

-- ValueObjects.ProfessionalBodies
ALTER TABLE [ValueObjects].[ProfessionalBodies]
ADD PRIMARY KEY ([ProfessionalBodyId])

-- ValueObjects.Permissions
ALTER TABLE [ValueObjects].[Permissions]
ADD PRIMARY KEY ([PermissionId])

-- ValueObjects.ScoreItems
ALTER TABLE [ValueObjects].[ScoreItems]
ADD PRIMARY KEY ([ScoreItemId])

ALTER TABLE [ValueObjects].[ScoreItems]
ADD FOREIGN KEY ([ParentScoreItemId])
REFERENCES [ValueObjects].[ScoreItems]([ScoreItemId])

ALTER TABLE [ValueObjects].[ScoreItems]
ADD FOREIGN KEY ([MeasurementToolId])
REFERENCES [ValueObjects].[MeasurementTools]([MeasurementToolId])

-- ValueObjects.ScoreValues
ALTER TABLE [ValueObjects].[ScoreValues]
ADD PRIMARY KEY ([ScoreValueId])

ALTER TABLE [ValueObjects].[ScoreValues]
ADD FOREIGN KEY ([ScoreItemId])
REFERENCES [ValueObjects].[ScoreItems]([ScoreItemId])

-- Audit.Log
ALTER TABLE [Audit].[Log]
ADD PRIMARY KEY ([LogId])

-- Facility.Details
ALTER TABLE [Facility].[Details]
ADD PRIMARY KEY ([FacilityId])

ALTER TABLE [Facility].[Details]
ADD FOREIGN KEY ([AdmissionTypeId])
REFERENCES [ValueObjects].[AdmissionTypes]([AdmissionTypeId])

-- Facility.MeasurementTools
ALTER TABLE [Facility].[MeasurementTools]
ADD FOREIGN KEY ([FacilityId])
REFERENCES [Facility].[Details]([FacilityId])

ALTER TABLE [Facility].[MeasurementTools]
ADD FOREIGN KEY ([MeasurementToolId])
REFERENCES [ValueObjects].[MeasurementTools]([MeasurementToolId])

-- User.Details
ALTER TABLE [User].[Details]
ADD PRIMARY KEY ([UserId])

ALTER TABLE [User].[Details]
ADD FOREIGN KEY ([TitleId])
REFERENCES [ValueObjects].[Titles]([TitleId])

ALTER TABLE [User].[Details]
ADD FOREIGN KEY ([ProfessionalBodyId])
REFERENCES [ValueObjects].[ProfessionalBodies]([ProfessionalBodyId])

ALTER TABLE [User].[Details]
ADD FOREIGN KEY ([CurrentFacilityId])
REFERENCES [Facility].[Details]([FacilityId])

-- User.Credentials
ALTER TABLE [User].[Credentials]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

-- User.MeasurementToolScores
ALTER TABLE [User].[MeasurementToolScores] 
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [User].[MeasurementToolScores] 
ADD FOREIGN KEY ([MeasurementToolId])
REFERENCES [ValueObjects].[MeasurementTools]([MeasurementToolId])

-- User.Permissions
ALTER TABLE [User].[Permissions]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [User].[Permissions]
ADD FOREIGN KEY ([FacilityId])
REFERENCES [Facility].[Details]([FacilityId])

ALTER TABLE [User].[Permissions]
ADD FOREIGN KEY ([PermissionId])
REFERENCES [ValueObjects].[Permissions]([PermissionId])

-- Patient.Details
ALTER TABLE [Patient].[Details]
ADD PRIMARY KEY ([PatientId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([GenderId])
REFERENCES [ValueObjects].[Genders]([GenderId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([RaceId])
REFERENCES [ValueObjects].[Races]([RaceId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([MedicalSchemeId])
REFERENCES [ValueObjects].[MedicalSchemes]([MedicalSchemeId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([TitleId])
REFERENCES [ValueObjects].[Titles]([TitleId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([CityId])
REFERENCES [ValueObjects].[Cities]([CityId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([ResidentialEnvironmentId])
REFERENCES [ValueObjects].[ResidentialEnvironments]([ResidentialEnvironmentId])

ALTER TABLE [Patient].[Details]
ADD FOREIGN KEY ([ImpairmentGroupId])
REFERENCES [ValueObjects].[ImpairmentGroups]([ImpairmentGroupId])

-- Patient.EpisodesOfCare
ALTER TABLE [Patient].[EpisodesOfCare]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Patient].[EpisodesOfCare]
ADD FOREIGN KEY ([ReasonForAdmissionId])
REFERENCES [ValueObjects].[ICD10Codes]([ICD10CodeId])

ALTER TABLE [Patient].[EpisodesOfCare]
ADD FOREIGN KEY ([AdmissionTypeId])
REFERENCES [ValueObjects].[AdmissionTypes]([AdmissionTypeId])

ALTER TABLE [Patient].[EpisodesOfCare]
ADD FOREIGN KEY ([DischargeTypeId])
REFERENCES [ValueObjects].[DischargeTypes]([DischargeTypeId])

-- Patient.MeasurementTools
ALTER TABLE [Patient].[MeasurementTools]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Patient].[MeasurementTools]
ADD FOREIGN KEY ([MeasurementToolId])
REFERENCES [ValueObjects].[MeasurementTools]([MeasurementToolId])

ALTER TABLE [Patient].[MeasurementTools]
ADD FOREIGN KEY ([FrequencyId])
REFERENCES [ValueObjects].[Frequencies]([FrequencyId])

-- Patient.SupportServices
ALTER TABLE [Patient].[SupportServices]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Patient].[SupportServices]
ADD FOREIGN KEY ([SupportServiceId])
REFERENCES [ValueObjects].[SupportServices]([SupportServiceId])

-- Patient.TeamMembers
ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([FacilityId])
REFERENCES [Facility].[Details]([FacilityId])

ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([AdmissionTypeId])
REFERENCES [ValueObjects].[AdmissionTypes]([AdmissionTypeId])

ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([DischargeTypeId])
REFERENCES [ValueObjects].[DischargeTypes]([DischargeTypeId])

ALTER TABLE [Patient].[TeamMembers]
ADD FOREIGN KEY ([ReasonForAdmissionId])
REFERENCES [ValueObjects].[ICD10Codes]([ICD10CodeId])

-- Audit.PatientImpairmentGroup
ALTER TABLE [Audit].[PatientImpairmentGroup]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Audit].[PatientImpairmentGroup]
ADD FOREIGN KEY ([ImpairmentGroupId])
REFERENCES [ValueObjects].[ImpairmentGroups]([ImpairmentGroupId])

-- Visit.Details
ALTER TABLE [Visit].[Details]
ADD PRIMARY KEY ([VisitId])

ALTER TABLE [Visit].[Details]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Visit].[Details]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [Visit].[Details]
ADD FOREIGN KEY ([EpisodeOfCareId])
REFERENCES [Patient].[EpisodesOfCare]([EpisodesOfCareId])

-- Visit.ScoreValues
ALTER TABLE [Visit].[ScoreValues]
ADD FOREIGN KEY ([VisitId])
REFERENCES [Visit].[Details]([VisitId])

ALTER TABLE [Visit].[ScoreValues]
ADD FOREIGN KEY ([ScoreValueId])
REFERENCES [ValueObjects].[ScoreValues]([ScoreValueId])

-- Message.Details
ALTER TABLE [Message].[Details]
ADD PRIMARY KEY ([MessageId])

ALTER TABLE [Message].[Details]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

ALTER TABLE [Message].[Details]
ADD FOREIGN KEY ([SenderId])
REFERENCES [User].[Details]([UserId])

-- Message.MessageRecipient
ALTER TABLE [Message].[MessageRecipient]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [Message].[MessageRecipient]
ADD FOREIGN KEY ([MessageId])
REFERENCES [Message].[Details]([MessageId])

-- Survey.Details
ALTER TABLE [Survey].[Details]
ADD PRIMARY KEY ([SurveyId])

-- Survey.Questions
ALTER TABLE [Survey].[Questions]
ADD PRIMARY KEY ([QuestionId])

ALTER TABLE [Survey].[Questions]
ADD FOREIGN KEY ([SurveyId])
REFERENCES [Survey].[Details]([SurveyId])

-- Survey.Options
ALTER TABLE [Survey].[Options]
ADD PRIMARY KEY ([OptionId])

ALTER TABLE [Survey].[Options]
ADD FOREIGN KEY ([QuestionId])
REFERENCES [Survey].[Questions]([QuestionId])

-- Survey.Results
ALTER TABLE [Survey].[Results]
ADD PRIMARY KEY ([ResultId])

ALTER TABLE [Survey].[Results]
ADD FOREIGN KEY ([OptionId])
REFERENCES [Survey].[Options]([OptionId])

ALTER TABLE [Survey].[Results]
ADD FOREIGN KEY ([UserId])
REFERENCES [User].[Details]([UserId])

ALTER TABLE [Survey].[Results]
ADD FOREIGN KEY ([PatientId])
REFERENCES [Patient].[Details]([PatientId])

COMMIT TRAN