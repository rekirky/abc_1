CREATE TABLE [stage].[SAB_ConsVendCertificateType]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[DisplayInCreate] [varchar] (51) NULL,
[Name] [varchar] (60) NULL,
[InvoiceBlocked] [varchar] (51) NULL,
[SendReminder] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CHASCertificateName] [varchar] (100) NULL,
[CHASCertificateType] [varchar] (51) NULL
) ON [PRIMARY]
GO
