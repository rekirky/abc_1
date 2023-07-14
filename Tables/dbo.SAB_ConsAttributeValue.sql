CREATE TABLE [dbo].[SAB_ConsAttributeValue]
(
[Attribute] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[InstanceValue] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Value] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAttributeValue] ADD CONSTRAINT [PK_SAB_ConsAttributeValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_CONSATTRIBUTEVALUE] ON [dbo].[SAB_ConsAttributeValue] ([Attribute], [InstanceValue]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsAttributeValue] TO [OH_BasicReadOnly]
GO
