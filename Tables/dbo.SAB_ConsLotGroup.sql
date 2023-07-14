CREATE TABLE [dbo].[SAB_ConsLotGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotGroup] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotGroup] ADD CONSTRAINT [PK_SAB_ConsLotGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
