CREATE EXTERNAL TABLE [blobFull].[HcmEmployment]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DefaultDimension] [varchar] (51) NULL,
[EmploymentType] [varchar] (51) NULL,
[LegalEntity] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[Worker] [bigint] NULL,
[EEOEstablishment] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[EmploymentId] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/HcmEmployment/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
