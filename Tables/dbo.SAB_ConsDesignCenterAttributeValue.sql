CREATE TABLE [dbo].[SAB_ConsDesignCenterAttributeValue]
(
[Attribute] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[InstanceValue] [bigint] NULL,
[IsDeleted] [varchar] (3) NULL,
[IsDeletedFlag] [bit] NULL,
[LastChangeDateTime] [date] NULL,
[LASTCHANGEDATETIMETZID] [int] NULL,
[LastChangeWorker] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[Value] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDesignCenterAttributeValue] ADD CONSTRAINT [PK_SAB_ConsDesignCenterAttributeValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
