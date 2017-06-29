ALTER TABLE [Visit].[Details]
ADD [EpisodeOfCareId] UNIQUEIDENTIFIER NULL

ALTER TABLE [Patient].[EpisodesOfCare]
ADD [EpisodeOfCareId] UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID()

ALTER TABLE [Patient].[EpisodesOfCare]
ADD [AllocationNumber] VARCHAR(255) NULL 

ALTER TABLE [Patient].[EpisodesOfCare]
ADD PRIMARY KEY ([EpisodeOfCareId])

ALTER TABLE [Visit].[Details]
ADD FOREIGN KEY ([EpisodeOfCareId])
REFERENCES [Patient].[EpisodesOfCare]([EpisodeOfCareId])

ALTER TABLE [Patient].[TeamMembers]
DROP CONSTRAINT FK__TeamMembe__Admis__3EFC4F81

ALTER TABLE [Patient].[TeamMembers]
DROP COLUMN [AdmissionTypeId]


ALTER TABLE [Patient].[TeamMembers]
DROP CONSTRAINT FK__TeamMembe__Disch__3FF073BA

ALTER TABLE [Patient].[TeamMembers]
DROP COLUMN [DischargeTypeId]

ALTER TABLE [Patient].[TeamMembers]
DROP CONSTRAINT FK__TeamMembe__Reaso__40E497F3

ALTER TABLE [Patient].[TeamMembers]
DROP COLUMN [ReasonForAdmissionId]

ALTER TABLE [Patient].[TeamMembers]
DROP COLUMN [ReasonForAdmissionTimestamp]