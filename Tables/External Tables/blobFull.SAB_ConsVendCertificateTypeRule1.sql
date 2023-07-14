CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendCertificateTypeRule]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CertificateType] [bigint] NULL,
[TradeType] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[LotStartHandling] [varchar] (51) NULL,
[DataArea] [varchar] (4) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Main/SAB_ConsVendCertificateTypeRule/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
