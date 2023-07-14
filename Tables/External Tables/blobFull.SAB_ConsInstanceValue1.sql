CREATE EXTERNAL TABLE [blobFull].[SAB_ConsInstanceValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[LEAD] [bigint] NULL,
[OPTION_] [bigint] NULL,
[LOT] [bigint] NULL,
[OPPORTUNITY] [bigint] NULL,
[BUILDINGTYPE] [bigint] NULL,
[LOTSTRUCTUREELEMENT] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[CLOSINGTASK] [bigint] NULL,
[ELEMENTOPENINGTASK] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsInstanceValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
