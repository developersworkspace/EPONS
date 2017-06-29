﻿CREATE TABLE [Admin].[Messages](
	[MessageId] UNIQUEIDENTIFIER NOT NULL,
	[Title] VARCHAR(255) NOT NULL,
	[Message] VARCHAR(MAX) NOT NULL,
	[FromTimestamp] DATETIME NOT NULL,
	[ToTimestamp] DATETIME NOT NULL,
	[CreatedTimestamp] DATETIME NOT NULL
	)