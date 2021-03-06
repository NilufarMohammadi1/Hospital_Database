USE [Hospital_db]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[NationalCivilCode] [varchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Gender] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Height] [tinyint] NULL,
	[Weight] [tinyint] NULL,
	[BloodType] [varchar](50) NULL,
	[LastDateReception] [datetime] NOT NULL,
	[ModifiedDateReception] [datetime] NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
