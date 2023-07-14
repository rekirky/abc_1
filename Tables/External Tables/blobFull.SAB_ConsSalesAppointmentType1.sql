CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesAppointmentType]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Duration] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Department] [varchar] (51) NULL,
[DefaultStatus] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsSalesAppointmentType/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
