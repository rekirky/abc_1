CREATE TABLE [dbo].[LogisticsLocationRole]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DisableAddOrEditInEmployeeSelfService] [varchar] (51) NULL,
[IsContactInfo] [varchar] (51) NULL,
[IsPostalAddress] [varchar] (51) NULL,
[Name] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsLocationRole] ADD CONSTRAINT [PK_LogisticsLocationRole_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_LogisticsLocationRole_RecID] ON [dbo].[LogisticsLocationRole] ([RECID]) ON [PRIMARY]
GO
