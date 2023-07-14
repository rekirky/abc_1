CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBuildingTypeFacadeStatus]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BiddingInactive] [varchar] (51) NULL,
[MarginAnalysisInactive] [varchar] (51) NULL,
[SalesInactive] [varchar] (51) NULL,
[SetupInactive] [varchar] (51) NULL,
[Status] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsBuildingTypeFacadeStatus/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
