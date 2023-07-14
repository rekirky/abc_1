CREATE TABLE [stage].[SAB_ConsReportingActivityTable]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[Impact] [varchar] (51) NULL,
[ReportingActivityId] [varchar] (100) NULL,
[RequireForLotStart] [varchar] (51) NULL,
[Sorting] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RequireIndividualActivityTaskCompletion] [varchar] (51) NULL,
[AmendmentApproval] [varchar] (51) NULL,
[OH_ActivityPurposeCriticalPath] [varchar] (51) NULL,
[OH_ActivityPurposeReportingGroup] [varchar] (50) NULL,
[OH_ShowOnBuyerPortal] [varchar] (51) NULL,
[OH_ShowActivityPurposeOnVendPortal] [varchar] (51) NULL
) ON [PRIMARY]
GO
