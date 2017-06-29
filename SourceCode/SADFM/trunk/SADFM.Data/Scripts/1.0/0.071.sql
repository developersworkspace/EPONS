CREATE TABLE VisitAttachment (
	VisitAttachmentId uniqueidentifier NOT NULL,
	MimeType varchar(100) NOT NULL,
	Name varchar(100) NOT NULL,
	Data varbinary(MAX) NOT NULL,
	VisitId uniqueidentifier NOT NULL
);

ALTER TABLE [VisitAttachment] ADD CONSTRAINT [PK_VisitAttachment] PRIMARY KEY (VisitAttachmentId);
ALTER TABLE [VisitAttachment] ADD CONSTRAINT [DF_VisitAttachment_VisitAttachmentId] DEFAULT (newid()) FOR VisitAttachmentId;
ALTER TABLE [VisitAttachment] ADD CONSTRAINT [FK_VisitAttachment_Visit] FOREIGN KEY (VisitId) REFERENCES Visit (VisitId);

ALTER TABLE [Visit] DROP COLUMN [VisitAttachment];
ALTER TABLE [Visit] DROP COLUMN [MimeType];