CREATE TABLE [dbo].[SAB_ConsVendCertificateType]
(
[CHASCertificateName] [varchar] (100) NULL,
[CHASCertificateType] [varchar] (256) NULL,
[CHASCertificateTypeEnumID] [varchar] (51) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DisplayInCreate] [varchar] (3) NULL,
[DisplayInCreateFlag] [bit] NULL,
[InvoiceBlocked] [varchar] (3) NULL,
[InvoiceBlockedFlag] [bit] NULL,
[Name] [varchar] (60) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SendReminder] [varchar] (3) NULL,
[SendReminderFlag] [bit] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendCertificateType] ADD CONSTRAINT [PK_SAB_ConsVendCertificateType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
