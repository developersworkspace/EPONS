CREATE TABLE [dbo].[UserFacility](
	[UserFacilityId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FacilityId] [uniqueidentifier] NOT NULL,
	[CreatedTimestamp] [datetime] NOT NULL,
	[LastUpdatedTimestamp] [datetime] NULL,
 CONSTRAINT [PK_dbo.UserFacility] PRIMARY KEY CLUSTERED 
(
	[UserFacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]