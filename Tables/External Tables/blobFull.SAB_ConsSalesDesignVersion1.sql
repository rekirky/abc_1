CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDesignVersion]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CURRENT_] [int] NULL,
[SalesDesign] [bigint] NULL,
[Version] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/WorksheetHeader/SAB_ConsSalesDesignVersion/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
