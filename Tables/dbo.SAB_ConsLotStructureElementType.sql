CREATE TABLE [dbo].[SAB_ConsLotStructureElementType]
(
[AllocationSource] [varchar] (3) NULL,
[AllocationSourceFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ElementType] [varchar] (20) NULL,
[OH_EnableForQuickQuote] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingElement] [varchar] (3) NULL,
[ReportingElementFlag] [bit] NULL,
[ShowInOptionSelect] [varchar] (3) NULL,
[ShowInOptionSelectFlag] [bit] NULL,
[SortOrder] [int] NULL,
[WorkOrderBudget] [varchar] (3) NULL,
[WorkOrderBudgetFlag] [bit] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStructureElementType] ADD CONSTRAINT [PK_SAB_ConsLotStructureElementType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
