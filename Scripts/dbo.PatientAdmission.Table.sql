USE [Hospital_db]
GO
/****** Object:  Table [dbo].[PatientAdmission]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientAdmission](
	[PatientAdmissionID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [smallint] NULL,
	[PatientID] [int] NOT NULL,
	[StaffID] [smallint] NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[DischargedDate] [datetime] NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ModifiedAt] [datetime] NOT NULL,
	[Description] [ntext] NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_PatientAppointment] PRIMARY KEY CLUSTERED 
(
	[PatientAdmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PatientAdmission]  WITH CHECK ADD  CONSTRAINT [FK_PatientAdmission_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[PatientAdmission] CHECK CONSTRAINT [FK_PatientAdmission_Room]
GO
ALTER TABLE [dbo].[PatientAdmission]  WITH CHECK ADD  CONSTRAINT [FK_PatientAppointment_Patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patients] ([PatientID])
GO
ALTER TABLE [dbo].[PatientAdmission] CHECK CONSTRAINT [FK_PatientAppointment_Patients]
GO
ALTER TABLE [dbo].[PatientAdmission]  WITH CHECK ADD  CONSTRAINT [FK_PatientAppointment_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[PatientAdmission] CHECK CONSTRAINT [FK_PatientAppointment_Staff]
GO
