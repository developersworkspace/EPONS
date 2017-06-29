USE [SADFM]
GO

IF OBJECT_ID('[Patient].[Doctor]', 'U') IS NOT NULL 
  DROP TABLE [Patient].[Doctor]; 
  


/****** Object:  Table [Patient].[Doctor]    Script Date: 2017/02/20 01:57:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Patient].[Doctor](
    [Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[ContactNumber] [varchar](64) NULL,
	[Email] [varchar](256) NULL,
	[PracticeName] [varchar](256) NULL,
	[IsActive] [bit] NULL,
	 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


