CREATE TABLE [dbo].[SAB_ConsLocation]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[Location] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TarionRoom] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLocation] ADD CONSTRAINT [PK_SAB_ConsLocation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
