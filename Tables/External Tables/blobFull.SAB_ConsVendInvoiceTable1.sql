CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendInvoiceTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ApprovalStatus] [varchar] (51) NULL,
[Backcharge] [varchar] (51) NULL,
[DocumentDate] [varchar] (40) NULL,
[InclTax] [varchar] (51) NULL,
[InvoiceAmount] [float] NULL,
[InvoiceId] [varchar] (30) NULL,
[PaymTermId] [varchar] (100) NULL,
[Posted] [varchar] (51) NULL,
[Tax1099Amount] [float] NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099State] [varchar] (10) NULL,
[Tax1099StateAmount] [float] NULL,
[TransDate] [varchar] (40) NULL,
[TransTxt] [varchar] (120) NULL,
[VendAccount] [varchar] (20) NULL,
[Voucher] [varchar] (30) NULL,
[UtilityInvoiceEntryHold] [varchar] (51) NULL,
[UtilityInvoiceEntryOverrideReason] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[PostingProfile] [varchar] (10) NULL,
[OH_AIInvoice] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/WorksheetHeader/SAB_ConsVendInvoiceTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
