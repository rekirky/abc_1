CREATE TABLE [stage].[SAB_ConsMasterAgreement]
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
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[MasterAgreementNum] [varchar] (30) NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
