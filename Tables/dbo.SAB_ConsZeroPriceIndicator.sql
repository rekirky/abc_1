CREATE TABLE [dbo].[SAB_ConsZeroPriceIndicator]
(
[AutoApprovePending] [varchar] (3) NULL,
[AutoApprovePendingFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsZeroPriceIndicator] ADD CONSTRAINT [PK_SAB_ConsZeroPriceIndicator_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsZeroPriceIndicator] ON [dbo].[SAB_ConsZeroPriceIndicator] ([Name], [RECID]) ON [PRIMARY]
GO
