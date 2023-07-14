CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendCertificateType]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DisplayInCreate] [varchar] (51) NULL,
[Name] [varchar] (60) NULL,
[InvoiceBlocked] [varchar] (51) NULL,
[SendReminder] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CHASCertificateName] [varchar] (100) NULL,
[CHASCertificateType] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Main/SAB_ConsVendCertificateType/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
