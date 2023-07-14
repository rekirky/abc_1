CREATE TABLE [dbo].[SAB_ConsRevenueCategory]
(
[AccrualMethod] [varchar] (256) NULL,
[AccrualMethodEnumID] [varchar] (51) NULL,
[CategoryNumber] [varchar] (10) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[IntercompanyPostingType] [varchar] (256) NULL,
[IntercompanyPostingTypeEnumID] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportType] [varchar] (256) NULL,
[ReportTypeEnumID] [varchar] (51) NULL,
[RevenueCategoryAllocationDestination] [bigint] NULL,
[TaxItemGroup] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsRevenueCategory] ADD CONSTRAINT [PK_SAB_ConsRevenueCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsRevenueCategory] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsRevenueCategory] TO [OH_BasicReadOnly]
GO
