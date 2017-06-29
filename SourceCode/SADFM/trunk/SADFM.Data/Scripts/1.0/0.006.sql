CREATE TABLE [dbo].[Audit](
	[AuditId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Audit_AuditId]  DEFAULT (newid()),	
	[FieldName] [VARCHAR](150) NULL,
	[OldValue] [VARCHAR](1000) NULL,
	[NewValue] [VARCHAR](1000) NULL,
	[UpdateDate] [datetime] NOT NULL CONSTRAINT [DF_Audit_UpdateDate]  DEFAULT (getdate()),
	[AccountId] [uniqueidentifier] NULL
 CONSTRAINT [PK_Audit] PRIMARY KEY CLUSTERED (
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) ON [PRIMARY];

