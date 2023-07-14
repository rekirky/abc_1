CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCustInvoiceTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ApprovalStatus] [varchar] (51) NULL,
[CustAccount] [varchar] (20) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DueDate] [varchar] (40) NULL,
[InclTax] [varchar] (51) NULL,
[InvoiceAmount] [float] NULL,
[InvoiceId] [varchar] (30) NULL,
[PaymTermId] [varchar] (100) NULL,
[Posted] [varchar] (51) NULL,
[PostingProfile] [varchar] (10) NULL,
[TransDate] [varchar] (40) NULL,
[TransTxt] [varchar] (120) NULL,
[Voucher] [varchar] (30) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetHeader/SAB_ConsCustInvoiceTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
