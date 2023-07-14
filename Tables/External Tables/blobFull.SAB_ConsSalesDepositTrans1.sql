CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDepositTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[Correction] [varchar] (51) NULL,
[DeductedAmount] [float] NULL,
[DepositReasonId] [varchar] (10) NULL,
[PaymentDate] [varchar] (40) NULL,
[PaymMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[PostingProfile] [varchar] (10) NULL,
[SalesDesign] [bigint] NULL,
[TransDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[Voucher] [varchar] (30) NULL,
[DepositRefund] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[AlternateRemitToPerson] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Opportunity] [bigint] NULL,
[SaleOrigin] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/Transaction/SAB_ConsSalesDepositTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
