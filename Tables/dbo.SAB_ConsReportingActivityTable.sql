CREATE TABLE [dbo].[SAB_ConsReportingActivityTable]
(
[AmendmentApproval] [varchar] (3) NULL,
[AmendmentApprovalFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Impact] [varchar] (256) NULL,
[ImpactEnumID] [varchar] (51) NULL,
[OH_ActivityPurposeCriticalPath] [varchar] (3) NULL,
[OH_ActivityPurposeCriticalPathFlag] [bit] NULL,
[OH_ActivityPurposeReportingGroup] [varchar] (50) NULL,
[OH_ShowActivityPurposeOnVendPortal] [varchar] (51) NULL,
[OH_ShowOnBuyerPortal] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingActivityId] [varchar] (100) NULL,
[RequireForLotStart] [varchar] (3) NULL,
[RequireForLotStartFlag] [bit] NULL,
[RequireIndividualActivityTaskCompletion] [varchar] (3) NULL,
[RequireIndividualActivityTaskCompletionFlag] [bit] NULL,
[Sorting] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsReportingActivityTable] ADD CONSTRAINT [PK_SAB_ConsReportingActivityTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
