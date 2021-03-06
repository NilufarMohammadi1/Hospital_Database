USE [Hospital_db]
GO
/****** Object:  Table [dbo].[StaffDepartment]    Script Date: 29/12/1400 01:14:58 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffDepartment](
	[StaffDepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[StaffID] [smallint] NOT NULL,
	[DepartmentID] [smallint] NOT NULL,
 CONSTRAINT [PK_StaffDepartment] PRIMARY KEY CLUSTERED 
(
	[StaffDepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StaffDepartment]  WITH CHECK ADD  CONSTRAINT [FK_StaffDepartment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[StaffDepartment] CHECK CONSTRAINT [FK_StaffDepartment_Department]
GO
ALTER TABLE [dbo].[StaffDepartment]  WITH CHECK ADD  CONSTRAINT [FK_StaffDepartment_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[StaffDepartment] CHECK CONSTRAINT [FK_StaffDepartment_Staff]
GO
