CREATE TABLE [PatientImpairmentGroupHistory]
(
    PatientImpairmentGroupHistoryId uniqueidentifier NOT NULL,
	ImpairmentGroupId uniqueidentifier NULL,
	PatientId uniqueidentifier NOT NULL,
	[Timestamp] DATETIME NOT NULL
);


ALTER TABLE [PatientImpairmentGroupHistory] ADD CONSTRAINT [PK_PatientImpairmentGroupHistory] PRIMARY KEY (PatientImpairmentGroupHistoryId);
ALTER TABLE [PatientImpairmentGroupHistory] ADD CONSTRAINT [DF_PatientImpairmentGroupHistory]  DEFAULT newid() FOR PatientImpairmentGroupHistoryId;
ALTER TABLE [PatientImpairmentGroupHistory] ADD CONSTRAINT [FK_ImpairmentGroup] FOREIGN KEY (ImpairmentGroupId) REFERENCES ListItem (ListItemId);
ALTER TABLE [PatientImpairmentGroupHistory] ADD CONSTRAINT [FK_Patient] FOREIGN KEY (PatientId) REFERENCES Patient (PatientId);