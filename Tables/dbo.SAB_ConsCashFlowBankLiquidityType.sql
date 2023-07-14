CREATE TABLE [dbo].[SAB_ConsCashFlowBankLiquidityType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[OH_CashFlowDefaultFilterItem] [varchar] (51) NULL,
[OH_CcCash] [varchar] (51) NULL,
[OH_NonCcCash] [varchar] (51) NULL,
[OH_NonOperatingLoan] [varchar] (51) NULL,
[OH_OperatingLoan] [varchar] (51) NULL,
[OH_ReadilyAvailCash] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCashFlowBankLiquidityType] ADD CONSTRAINT [PK_SAB_ConsCashFlowBankLiquidityType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
