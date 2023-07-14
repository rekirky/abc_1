CREATE TABLE [dbo].[SAB_ConsWBSConstructionPhase]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[Phase] [varchar] (30) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSConstructionPhase] ADD CONSTRAINT [PK_SAB_ConsWBSConstructionPhase_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
