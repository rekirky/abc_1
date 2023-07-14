CREATE TABLE [stage].[SAB_ConsCostTrans]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AmountMST] [float] NULL,
[CostCategory] [bigint] NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[PostingType] [varchar] (51) NULL,
[TransDate] [varchar] (40) NULL,
[Voucher] [varchar] (30) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
