USE [Hospital_db]
GO
/****** Object:  Table [dbo].[PatientDesease]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientDesease](
	[PatientDeseaseID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[DeseaseID] [smallint] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Description] [ntext] NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_PatientDesease] PRIMARY KEY CLUSTERED 
(
	[PatientDeseaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PatientDesease]  WITH CHECK ADD  CONSTRAINT [FK_PatientDesease_Desease] FOREIGN KEY([DeseaseID])
REFERENCES [dbo].[Deseases] ([DeseaseID])
GO
ALTER TABLE [dbo].[PatientDesease] CHECK CONSTRAINT [FK_PatientDesease_Desease]
GO
ALTER TABLE [dbo].[PatientDesease]  WITH CHECK ADD  CONSTRAINT [FK_PatientDesease_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[PatientDesease] CHECK CONSTRAINT [FK_PatientDesease_Patients]
GO
