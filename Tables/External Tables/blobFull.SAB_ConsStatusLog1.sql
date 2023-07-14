CREATE EXTERNAL TABLE [blobFull].[SAB_ConsStatusLog]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[LineNumber] [bigint] NULL,
[TransDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[Value] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[Opportunity] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/Transaction/SAB_ConsStatusLog/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
