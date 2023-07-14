CREATE EXTERNAL TABLE [blobFull].[TaxOnItem]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AbatementPercent_IN] [varchar] (51) NULL,
[CustomsChargeAsExpensePercent_IN] [varchar] (51) NULL,
[ExemptTax_BR] [varchar] (51) NULL,
[LoadOnInventory_IN] [varchar] (51) NULL,
[LoadOnInventoryPercent_IN] [varchar] (51) NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[WithoutTaxCredit_BR] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Tax/Group/TaxOnItem/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
