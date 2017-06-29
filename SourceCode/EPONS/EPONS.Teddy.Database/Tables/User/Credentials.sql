IF OBJECT_ID('[User].[Credentials]', 'U') IS NOT NULL 
  DROP TABLE [User].[Credentials]; 

CREATE TABLE [User].[Credentials] (
	[UserId] UNIQUEIDENTIFIER NOT NULL,
	[Username] VARCHAR(256) NOT NULL,
	[Password] VARCHAR(256) NULL,
	[InvalidLoginAttempts] INT NOT NULL,
	[Locked] BIT NOT NULL,
	[LastLoginTimestamp] DATETIME NULL
)