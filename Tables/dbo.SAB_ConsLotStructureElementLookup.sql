CREATE TABLE [dbo].[SAB_ConsLotStructureElementLookup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ElementType] [bigint] NULL,
[ElementTypeParent] [bigint] NULL,
[LevelParent] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStructureElementLookup] ADD CONSTRAINT [PK_SAB_ConsLotStructureElementLookup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
