CREATE TABLE [dbo].[SAB_ConsLotStructureAttributeGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ElementType] [bigint] NULL,
[GroupId] [varchar] (30) NULL,
[LEVEL_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStructureAttributeGroup] ADD CONSTRAINT [PK_SAB_ConsLotStructureAttributeGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsLotStructureAttributeGroup_ElementType] ON [dbo].[SAB_ConsLotStructureAttributeGroup] ([ElementType]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotStructureAttributeGroup] TO [OH_BasicReadOnly]
GO
