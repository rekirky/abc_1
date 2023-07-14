CREATE TABLE [dbo].[SecurityUserRole]
(
[ASSIGNMENTMODE] [bigint] NULL,
[ASSIGNMENTSTATUS] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [bigint] NULL,
[SECURITYROLE] [bigint] NULL,
[USER_] [varchar] (251) NULL,
[VALIDFROM] [date] NULL,
[VALIDFROMTZID] [bigint] NULL,
[VALIDTO] [date] NULL,
[VALIDTOTZID] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SecurityUserRole] ADD CONSTRAINT [PK_SecurityUserRole_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
