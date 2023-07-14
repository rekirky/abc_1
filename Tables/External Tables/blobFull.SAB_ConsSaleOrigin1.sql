CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSaleOrigin]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[Name] [varchar] (254) NULL,
[QUOTATIONJOUR] [bigint] NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/Main/SAB_ConsSaleOrigin/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
