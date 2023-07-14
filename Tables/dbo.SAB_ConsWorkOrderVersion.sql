CREATE TABLE [dbo].[SAB_ConsWorkOrderVersion]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[IsArchived] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[VersionDateTime] [date] NULL,
[VERSIONDATETIMETZID] [int] NULL,
[WorkOrder] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrderVersion] ADD CONSTRAINT [PK_SAB_ConsWorkOrderVersion_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
