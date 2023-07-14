CREATE TABLE [dbo].[SAB_ConsLotLotGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Lot] [bigint] NULL,
[LotGroup] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotLotGroup] ADD CONSTRAINT [PK_SAB_ConsLotLotGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
