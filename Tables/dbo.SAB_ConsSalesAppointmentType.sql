CREATE TABLE [dbo].[SAB_ConsSalesAppointmentType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultStatus] [varchar] (256) NULL,
[DefaultStatusEnumID] [varchar] (51) NULL,
[Department] [varchar] (256) NULL,
[DepartmentEnumID] [varchar] (51) NULL,
[Duration] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesAppointmentType] ADD CONSTRAINT [PK_SAB_ConsSalesAppointmentType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
