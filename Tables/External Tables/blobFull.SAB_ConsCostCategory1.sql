CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCostCategory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AccrualMethod] [varchar] (51) NULL,
[CategoryGroup] [bigint] NULL,
[CategoryNumber] [varchar] (10) NULL,
[CostCategoryAllocationDestination] [bigint] NULL,
[CSActive] [varchar] (51) NULL,
[FieldPurchOrderContingencyCostCategory] [bigint] NULL,
[IntercompanyPostingType] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[ReportType] [varchar] (51) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Group/SAB_ConsCostCategory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
