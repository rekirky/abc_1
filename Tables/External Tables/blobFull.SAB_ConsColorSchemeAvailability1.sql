CREATE EXTERNAL TABLE [blobFull].[SAB_ConsColorSchemeAvailability]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ColorScheme] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsColorSchemeAvailability/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
