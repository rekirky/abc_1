CREATE EXTERNAL TABLE [blobFull].[OH_ConsResponsibilityHistory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Responsibility] [bigint] NULL,
[Worker] [bigint] NULL,
[IsPrimary] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[RefRecId] [bigint] NULL,
[RemovedDate] [varchar] (40) NULL,
[REMOVEDDATETZID] [int] NULL,
[AddedDate] [varchar] (40) NULL,
[ADDEDDATETZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[SYSROWVERSIONNUMBER] [varchar] (50) NULL
)
WITH
(
LOCATION = N'Tables/General/Miscellaneous/OH_ConsResponsibilityHistory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
