CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDesignCenterAttributeValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Attribute] [bigint] NULL,
[InstanceValue] [bigint] NULL,
[LastChangeDateTime] [varchar] (40) NULL,
[LASTCHANGEDATETIMETZID] [int] NULL,
[LastChangeWorker] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[OPTION_] [bigint] NULL,
[TradeType] [bigint] NULL,
[Value] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[IsDeleted] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Worksheet/SAB_ConsDesignCenterAttributeValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
