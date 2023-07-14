CREATE TABLE [stage].[SAB_ConsCSWarrantyExpiryRule]
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
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[TradeType] [bigint] NULL,
[WarrantyPeriod] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
