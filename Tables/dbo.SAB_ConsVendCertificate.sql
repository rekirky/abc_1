CREATE TABLE [dbo].[SAB_ConsVendCertificate]
(
[Agency] [bigint] NULL,
[AgencyUnlisted] [varchar] (30) NULL,
[CertificateNumber] [varchar] (30) NULL,
[CertificateType] [bigint] NULL,
[CREATEDDATETIME] [date] NULL,
[DataArea] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[InsuranceAmount] [numeric] (18, 2) NULL,
[Insurer] [bigint] NULL,
[InsurerUnlisted] [varchar] (30) NULL,
[LotStructureElement] [bigint] NULL,
[Override] [varchar] (3) NULL,
[OverrideFlag] [bit] NULL,
[OverrideReason] [bigint] NULL,
[OverrideReviewDate] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendCertificate] ADD CONSTRAINT [PK_SAB_ConsVendCertificate_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
