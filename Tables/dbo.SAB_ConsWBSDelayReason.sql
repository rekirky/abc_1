CREATE TABLE [dbo].[SAB_ConsWBSDelayReason]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Impact] [varchar] (256) NULL,
[ImpactEnumID] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[OH_ConsResponsibilityRecId] [bigint] NULL,
[OH_requireOwner] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSDelayReason] ADD CONSTRAINT [PK_SAB_ConsWBSDelayReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
