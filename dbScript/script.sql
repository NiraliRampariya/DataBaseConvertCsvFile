USE [VB.NetTutorialsDB]
GO
/****** Object:  Table [dbo].[DisplayItems]    Script Date: 1/5/2022 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DisplayItems](
	[Item_Id] [nvarchar](255) NULL,
	[Item_Prc_1] [nvarchar](255) NULL,
	[Item_Prc_2] [nvarchar](255) NULL,
	[Item_Prc_3] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 1/5/2022 11:37:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[ConfirmPassword] [varchar](255) NULL,
	[Gender] [varchar](255) NULL,
	[DateOfBirth] [varchar](255) NULL,
	[ContactNo] [varchar](255) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
