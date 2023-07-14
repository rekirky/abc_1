CREATE EXTERNAL TABLE [blobFull].[SAB_ConsValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (40) NULL,
[DataLakeModified_DateTime] [varchar] (40) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[Origin] [bigint] NULL,
[DATETIMEVALUE] [varchar] (40) NULL,
[DATETIMEVALUETZID] [int] NULL,
[FLOATVALUE] [float] NULL,
[CURRENCYCODE] [varchar] (251) NULL,
[CURRENCYVALUE] [float] NULL,
[DATEVALUE] [varchar] (40) NULL,
[INTVALUE] [int] NULL,
[BOOLEANVALUE] [int] NULL,
[TEXTPROMPT] [varchar] (500) NULL,
[TEXTVALUE] [varchar] (500) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[RELATIONTYPE] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
