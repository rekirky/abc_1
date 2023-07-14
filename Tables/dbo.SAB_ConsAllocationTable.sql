CREATE TABLE [dbo].[SAB_ConsAllocationTable]
(
[AllocationId] [varchar] (30) NULL,
[AllocationRule] [bigint] NULL,
[BudgetExceeded] [varchar] (51) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ElementType] [bigint] NULL,
[FromDate] [date] NULL,
[LotStructureElementDestination] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Posted] [varchar] (3) NULL,
[PostedFlag] [bit] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ToDate] [date] NULL,
[TransDate] [date] NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAllocationTable] ADD CONSTRAINT [PK_SAB_ConsAllocationTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
