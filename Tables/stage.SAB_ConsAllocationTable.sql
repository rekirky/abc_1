CREATE TABLE [stage].[SAB_ConsAllocationTable]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AllocationId] [varchar] (30) NULL,
[AllocationRule] [bigint] NULL,
[BudgetExceeded] [varchar] (51) NULL,
[ElementType] [bigint] NULL,
[FromDate] [varchar] (40) NULL,
[LotStructureElementDestination] [bigint] NULL,
[Posted] [varchar] (51) NULL,
[ToDate] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL,
[Voucher] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
