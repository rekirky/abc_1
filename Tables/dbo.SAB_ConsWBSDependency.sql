CREATE TABLE [dbo].[SAB_ConsWBSDependency]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LeadLag] [int] NULL,
[PARTITION] [bigint] NULL,
[Predecessor] [varchar] (50) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Successor] [varchar] (50) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSDependency] ADD CONSTRAINT [PK_SAB_ConsWBSDependency_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
