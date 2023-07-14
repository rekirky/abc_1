CREATE EXTERNAL TABLE [blobFull].[SAB_ConsClosingLotRevenueAccrualTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[RevenueCategory] [bigint] NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[TransDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[Voucher] [varchar] (30) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[LedgerDimension] [varchar] (51) NULL,
[PostingType] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsClosingLotRevenueAccrualTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
