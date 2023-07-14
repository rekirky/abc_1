CREATE TABLE [dbo].[TransactTxt]
(
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LanguageId] [varchar] (7) NULL,
[OH_Notes] [varchar] (255) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransactionType] [varchar] (256) NULL,
[TransactionTypeEnumID] [varchar] (51) NULL,
[Txt] [varchar] (120) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TransactTxt] ADD CONSTRAINT [PK_TransactTxt_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
