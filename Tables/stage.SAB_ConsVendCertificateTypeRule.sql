CREATE TABLE [stage].[SAB_ConsVendCertificateTypeRule]
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
[CertificateType] [bigint] NULL,
[TradeType] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[LotStartHandling] [varchar] (51) NULL,
[DataArea] [varchar] (4) NULL
) ON [PRIMARY]
GO
