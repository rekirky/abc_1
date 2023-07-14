CREATE TABLE [stage].[SAB_ConsJournalEntry]
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
) ON [PRIMARY]
GO
