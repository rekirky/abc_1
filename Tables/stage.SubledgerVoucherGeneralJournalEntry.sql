CREATE TABLE [stage].[SubledgerVoucherGeneralJournalEntry]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AccountingDate] [varchar] (40) NULL,
[GeneralJournalEntry] [bigint] NULL,
[Voucher] [varchar] (30) NULL,
[VoucherDataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SubledgerJournalEntry] [bigint] NULL,
[TransferId] [bigint] NULL
) ON [PRIMARY]
GO
