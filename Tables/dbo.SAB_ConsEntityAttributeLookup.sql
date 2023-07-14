CREATE TABLE [dbo].[SAB_ConsEntityAttributeLookup]
(
[Attribute] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[EntityAttribute] [bigint] NULL,
[EntityType] [varchar] (256) NULL,
[EntityTypeEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RefRecId] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsEntityAttributeLookup] ADD CONSTRAINT [PK_SAB_ConsEntityAttributeLookup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsEntityAttributeLookup_RefRecID] ON [dbo].[SAB_ConsEntityAttributeLookup] ([RefRecId]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsEntityAttributeLookup] TO [OH_BasicReadOnly]
GO
