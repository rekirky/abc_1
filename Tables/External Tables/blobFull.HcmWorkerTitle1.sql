CREATE EXTERNAL TABLE [blobFull].[HcmWorkerTitle]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Location] [bigint] NULL,
[OfficeLocation] [varchar] (255) NULL,
[SeniorityDate] [varchar] (40) NULL,
[SENIORITYDATETZID] [int] NULL,
[Title] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[Worker] [bigint] NULL,
[WorksFromHome] [varchar] (51) NULL,
[OriginalHireDateTime] [varchar] (40) NULL,
[ORIGINALHIREDATETIMETZID] [int] NULL,
[AnniversaryDateTime] [varchar] (40) NULL,
[ANNIVERSARYDATETIMETZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/General/Group/HcmWorkerTitle/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
