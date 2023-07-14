CREATE TABLE [dbo].[SAB_ConsInstanceValue]
(
[BUILDINGTYPE] [bigint] NULL,
[CLOSINGTASK] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ELEMENTOPENINGTASK] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[LEAD] [bigint] NULL,
[LOT] [bigint] NULL,
[LOTSTRUCTUREELEMENT] [bigint] NULL,
[OPPORTUNITY] [bigint] NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsInstanceValue] ADD CONSTRAINT [PK_SAB_ConsInstanceValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SabConsInstanceValueLotStructureElement] ON [dbo].[SAB_ConsInstanceValue] ([CLOSINGTASK], [RECID], [LOT], [LOTSTRUCTUREELEMENT]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsInstanceValue] TO [OH_BasicReadOnly]
GO
