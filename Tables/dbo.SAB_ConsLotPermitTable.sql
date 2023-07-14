CREATE TABLE [dbo].[SAB_ConsLotPermitTable]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PermitDate] [date] NULL,
[PermitNumber] [varchar] (50) NULL,
[PermitType] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotPermitTable] ADD CONSTRAINT [PK_SAB_ConsLotPermitTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
