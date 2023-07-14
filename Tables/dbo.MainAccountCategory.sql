CREATE TABLE [dbo].[MainAccountCategory]
(
[AccountCategory] [varchar] (20) NULL,
[AccountCategoryDisplayOrder] [int] NULL,
[AccountCategoryRef] [int] NULL,
[AccountType] [varchar] (256) NULL,
[AccountTypeEnumID] [varchar] (51) NULL,
[Closed] [varchar] (3) NULL,
[ClosedFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MainAccountCategory] ADD CONSTRAINT [PK_MainAccountCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[MainAccountCategory] TO [OH_BasicReadOnly]
GO
