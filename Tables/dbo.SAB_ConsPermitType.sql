CREATE TABLE [dbo].[SAB_ConsPermitType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (30) NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsPermitType] ADD CONSTRAINT [PK_SAB_ConsPermitType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
