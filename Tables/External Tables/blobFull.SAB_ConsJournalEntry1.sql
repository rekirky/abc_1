CREATE EXTERNAL TABLE [blobFull].[SAB_ConsJournalEntry]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ApprovalStatus] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[JournalEntryId] [varchar] (30) NULL,
[JournalType] [varchar] (51) NULL,
[Posted] [varchar] (51) NULL,
[ReverseDate] [varchar] (40) NULL,
[ReverseEntry] [varchar] (51) NULL,
[ReverseEntryRecId] [bigint] NULL,
[TransDate] [varchar] (40) NULL,
[Voucher] [varchar] (30) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ForeignCompany] [varchar] (4) NULL,
[ForeignJournalType] [varchar] (51) NULL,
[ForeignVoucher] [varchar] (30) NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetHeader/SAB_ConsJournalEntry/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
