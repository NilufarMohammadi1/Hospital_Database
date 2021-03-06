USE [Hospital_db]
GO
/****** Object:  Table [dbo].[PatientReception]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientReception](
	[ReceptionID] [smallint] NOT NULL,
	[PatientID] [int] NOT NULL,
	[Reception_date] [datetime] NOT NULL,
	[Discharged_date] [datetime] NOT NULL,
	[Room_number] [smallint] NULL,
 CONSTRAINT [PK_PatientReception] PRIMARY KEY CLUSTERED 
(
	[ReceptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PatientReception]  WITH CHECK ADD  CONSTRAINT [FK_PatientReception_PatientDesease] FOREIGN KEY([PatientID])
REFERENCES [dbo].[PatientDesease] ([PatientDeseaseID])
GO
ALTER TABLE [dbo].[PatientReception] CHECK CONSTRAINT [FK_PatientReception_PatientDesease]
GO
ALTER TABLE [dbo].[PatientReception]  WITH CHECK ADD  CONSTRAINT [FK_PatientReception_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[PatientReception] CHECK CONSTRAINT [FK_PatientReception_Patients]
GO
