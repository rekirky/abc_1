CREATE TABLE [stage].[SAB_ConsLotStructureElementType]
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
[ElementType] [varchar] (20) NULL,
[ShowInOptionSelect] [varchar] (51) NULL,
[SortOrder] [int] NULL,
[WorkOrderBudget] [varchar] (51) NULL,
[ReportingElement] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[AllocationSource] [varchar] (51) NULL,
[OH_EnableForQuickQuote] [varchar] (51) NULL
) ON [PRIMARY]
GO
