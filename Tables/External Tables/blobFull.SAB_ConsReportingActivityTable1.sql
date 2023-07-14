CREATE EXTERNAL TABLE [blobFull].[SAB_ConsReportingActivityTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Group/SAB_ConsReportingActivityTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
