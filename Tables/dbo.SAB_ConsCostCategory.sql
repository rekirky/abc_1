CREATE TABLE [dbo].[SAB_ConsCostCategory]
(
[AccrualMethod] [varchar] (256) NULL,
[AccrualMethodEnumID] [varchar] (51) NULL,
[CategoryGroup] [bigint] NULL,
[CategoryNumber] [varchar] (10) NULL,
[CostCategoryAllocationDestination] [bigint] NULL,
[CSActive] [varchar] (3) NULL,
[CSActiveFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FieldPurchOrderContingencyCostCategory] [bigint] NULL,
[IntercompanyPostingType] [varchar] (256) NULL,
[IntercompanyPostingTypeEnumID] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportType] [varchar] (256) NULL,
[ReportTypeEnumID] [varchar] (51) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCostCategory] ADD CONSTRAINT [PK_SAB_ConsCostCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsCostCategory] ON [dbo].[SAB_ConsCostCategory] ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsCostCategory] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsCostCategory] TO [OH_BasicReadOnly]
GO
