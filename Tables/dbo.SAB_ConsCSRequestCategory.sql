CREATE TABLE [dbo].[SAB_ConsCSRequestCategory]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SkipCloseApproval] [varchar] (3) NULL,
[SkipCloseApprovalFlag] [bit] NULL,
[SLADays] [varchar] (51) NULL,
[TarionRequestCategory] [varchar] (50) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestCategory] ADD CONSTRAINT [PK_SAB_ConsCSRequestCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsCSRequestCategory] TO [Eliant]
GO
