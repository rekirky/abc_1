CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSLotContact]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Active] [varchar] (51) NULL,
[IsPrimary] [varchar] (51) NULL,
[Lot] [bigint] NULL,
[OccupantStatus] [bigint] NULL,
[Party] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/Main/SAB_ConsCSLotContact/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
