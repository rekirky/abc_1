CREATE EXTERNAL TABLE [blobFull].[TaxGroupData]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ExemptTax] [varchar] (51) NULL,
[IntracomVAT] [varchar] (51) NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxGroup] [varchar] (10) NULL,
[UseTax] [varchar] (51) NULL,
[VATScheduleName_IN] [bigint] NULL,
[ReverseCharge_W] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Tax/Group/TaxGroupData/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
