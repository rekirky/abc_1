CREATE EXTERNAL TABLE [blobFull].[SAB_ConsMasterAgreementVersion]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Description] [varchar] (120) NULL,
[IsPrimary] [varchar] (51) NULL,
[MasterAgreement] [bigint] NULL,
[Status] [varchar] (51) NULL,
[Version] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsMasterAgreementVersion/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
