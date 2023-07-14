CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestCategory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Name] [varchar] (50) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SkipCloseApproval] [varchar] (51) NULL,
[TarionRequestCategory] [varchar] (50) NULL,
[SLADays] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/Group/SAB_ConsCSRequestCategory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
