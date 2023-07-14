CREATE TABLE [stage].[SAB_ConsRevenueCategory]
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
[AccrualMethod] [varchar] (51) NULL,
[CategoryNumber] [varchar] (10) NULL,
[IntercompanyPostingType] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[ReportType] [varchar] (51) NULL,
[RevenueCategoryAllocationDestination] [bigint] NULL,
[TaxItemGroup] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
