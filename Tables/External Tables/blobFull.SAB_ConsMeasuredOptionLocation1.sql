CREATE EXTERNAL TABLE [blobFull].[SAB_ConsMeasuredOptionLocation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[Purpose] [varchar] (51) NULL,
[RemoveLocation] [varchar] (51) NULL,
[UseLotSubfloor] [varchar] (51) NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsMeasuredOptionLocation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
