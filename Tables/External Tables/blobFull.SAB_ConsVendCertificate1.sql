CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendCertificate]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Agency] [bigint] NULL,
[AgencyUnlisted] [varchar] (30) NULL,
[CertificateNumber] [varchar] (30) NULL,
[CertificateType] [bigint] NULL,
[InsuranceAmount] [float] NULL,
[Insurer] [bigint] NULL,
[InsurerUnlisted] [varchar] (30) NULL,
[LotStructureElement] [bigint] NULL,
[Override] [varchar] (51) NULL,
[OverrideReason] [bigint] NULL,
[OverrideReviewDate] [varchar] (40) NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[DataArea] [varchar] (4) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Main/SAB_ConsVendCertificate/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
