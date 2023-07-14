CREATE TABLE [dbo].[SAB_ConsVendCertificateTypeRule]
(
[CertificateType] [bigint] NULL,
[DataArea] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotStartHandling] [varchar] (256) NULL,
[LotStartHandlingEnumID] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendCertificateTypeRule] ADD CONSTRAINT [PK_SAB_ConsVendCertificateTypeRule_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
