CREATE TABLE [dbo].[SAB_ConsFinancialPostingGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsFinancialPostingGroup] ADD CONSTRAINT [PK_SAB_ConsFinancialPostingGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsFinancialPostingGroup] TO [OH_BasicReadOnly]
GO
