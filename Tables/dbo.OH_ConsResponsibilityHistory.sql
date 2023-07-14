CREATE TABLE [dbo].[OH_ConsResponsibilityHistory]
(
[AddedDate] [date] NULL,
[ADDEDDATETZID] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[IsPrimary] [varchar] (3) NULL,
[IsPrimaryFlag] [bit] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RefRecId] [bigint] NULL,
[RemovedDate] [date] NULL,
[REMOVEDDATETZID] [int] NULL,
[Responsibility] [bigint] NULL,
[SYSROWVERSIONNUMBER] [varchar] (50) NULL,
[Worker] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OH_ConsResponsibilityHistory] ADD CONSTRAINT [PK_OH_ConsResponsibilityHistory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
