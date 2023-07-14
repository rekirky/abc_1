CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendCrew]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Color] [int] NULL,
[Name] [varchar] (10) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[ContactParty] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsVendCrew/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
