CREATE TABLE [stage].[SAB_ConsCashFlowBankLiquidityType]
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
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_CcCash] [varchar] (51) NULL,
[OH_NonCcCash] [varchar] (51) NULL,
[OH_ReadilyAvailCash] [varchar] (51) NULL,
[OH_OperatingLoan] [varchar] (51) NULL,
[OH_NonOperatingLoan] [varchar] (51) NULL,
[OH_CashFlowDefaultFilterItem] [varchar] (51) NULL
) ON [PRIMARY]
GO
