CREATE TABLE [dbo].[SAB_ConsCashFlowBankType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[OH_CashFlowBankType] [varchar] (256) NULL,
[OH_CashFlowBankTypeEnumID] [varchar] (51) NULL,
[OH_CashFlowDefaultFilterItem] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCashFlowBankType] ADD CONSTRAINT [PK_SAB_ConsCashFlowBankType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
