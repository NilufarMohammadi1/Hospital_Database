USE [Hospital_db]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [smallint] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Email] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ModifiedAt] [datetime] NOT NULL,
	[RoleID] [smallint] NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
