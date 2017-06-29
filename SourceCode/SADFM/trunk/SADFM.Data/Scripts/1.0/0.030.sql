CREATE TABLE ScoreDefinition(
	ScoreDefinitionId uniqueidentifier not null,
	ScaleValueId uniqueidentifier not null,
	FunderExplanationId uniqueidentifier NULL,
    ProviderExplanationId uniqueidentifier NULL);
ALTER TABLE ScoreDefinition ADD CONSTRAINT [PK_ScoreDefinition] PRIMARY KEY (ScoreDefinitionId);
ALTER TABLE ScoreDefinition ADD CONSTRAINT [DF_ScoreDefinition_ScoreDefinitionId] DEFAULT (newid()) FOR ScoreDefinitionId;
ALTER TABLE ScoreDefinition ADD CONSTRAINT [FK_ScoreDefinition_ScaleValue] FOREIGN KEY (ScaleValueId) REFERENCES ListItem (ListItemId);
ALTER TABLE ScoreDefinition ADD CONSTRAINT [FK_ScoreDefinition_FunderExplanation] FOREIGN KEY (FunderExplanationId) REFERENCES ListItem (ListItemId);
ALTER TABLE ScoreDefinition ADD CONSTRAINT [FK_ScoreDefinition_ProviderExplanation] FOREIGN KEY (ProviderExplanationId) REFERENCES ListItem (ListItemId);

CREATE TABLE Visit(
	VisitId uniqueidentifier not null,
	PatientId uniqueidentifier not null,
	VisitDate datetime null,
	VisitDuration nvarchar(25) null,
	VisitNotes nvarchar(4000) null,
	VisitAttachment varbinary(max) null);
ALTER TABLE Visit ADD CONSTRAINT [PK_Visit] PRIMARY KEY (VisitId);
ALTER TABLE Visit ADD CONSTRAINT [DF_Visit_VisitId] DEFAULT (newid()) FOR VisitId;
ALTER TABLE Visit ADD CONSTRAINT [FK_Visit_PatientId] FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);

CREATE TABLE VisitScore(
	VisitScoreId uniqueidentifier not null,
	VisitId uniqueidentifier not null,
	Score int not null);
ALTER TABLE VisitScore ADD CONSTRAINT [PK_VisitScore] PRIMARY KEY (VisitScoreId);
ALTER TABLE VisitScore ADD CONSTRAINT [DF_VisitScore_VisitScoreId] DEFAULT (newid()) FOR VisitScoreId;
ALTER TABLE VisitScore ADD CONSTRAINT [FK_VisitScore_Visit] FOREIGN KEY (VisitId) REFERENCES Visit (VisitId);