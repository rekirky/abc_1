CREATE TABLE [dbo].[SAB_ConsStatusLog]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Opportunity] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransDate] [date] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[Value] [varchar] (20) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsStatusLog] ADD CONSTRAINT [PK_SAB_ConsStatusLog_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SupportingSAB_ConsStatusLog] ON [dbo].[SAB_ConsStatusLog] ([FinancialInstance], [LineNumber], [TransDate], [TypeEnumID], [Value]) ON [PRIMARY]
GO
