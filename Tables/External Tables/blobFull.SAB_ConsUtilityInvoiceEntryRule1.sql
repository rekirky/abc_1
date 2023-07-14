CREATE EXTERNAL TABLE [blobFull].[SAB_ConsUtilityInvoiceEntryRule]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[GracePeriod] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CostCategory] [bigint] NULL,
[Vendor] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsUtilityInvoiceEntryRule/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
