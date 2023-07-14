CREATE TABLE [dbo].[SAB_ConsBudgetTrans]
(
[AmountMST] [numeric] (18, 2) NULL,
[Budget] [bigint] NULL,
[BudgetRevision] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LateChange] [varchar] (3) NULL,
[LateChangeFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[Source] [varchar] (256) NULL,
[SourceEnumID] [varchar] (51) NULL,
[SourceReference] [varchar] (30) NULL,
[TransDate] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBudgetTrans] ADD CONSTRAINT [PK_SAB_ConsBudgetTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
