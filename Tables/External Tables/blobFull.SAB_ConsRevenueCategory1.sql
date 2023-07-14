CREATE EXTERNAL TABLE [blobFull].[SAB_ConsRevenueCategory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Group/SAB_ConsRevenueCategory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
