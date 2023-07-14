CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendTradeTypeTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BidGroupByElementType] [bigint] NULL,
[CSCostCategoryDefault] [bigint] NULL,
[VendTradeTypeDescription] [varchar] (120) NULL,
[VendTradeTypeId] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Group/SAB_ConsVendTradeTypeTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
