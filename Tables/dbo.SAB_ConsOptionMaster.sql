CREATE TABLE [dbo].[SAB_ConsOptionMaster]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OPTION_] [bigint] NULL,
[OptionMasterId] [varchar] (30) NULL,
[ParentOptionMaster] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Sorting] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionMaster] ADD CONSTRAINT [PK_SAB_ConsOptionMaster_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
