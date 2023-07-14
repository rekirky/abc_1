CREATE TABLE [dbo].[SAB_ConsLotStartLine]
(
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[Inactive] [varchar] (3) NULL,
[InactiveFlag] [bit] NULL,
[LotStart] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[WBSBuildingTypeEnumerationAttributeValue] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStartLine] ADD CONSTRAINT [PK_SAB_ConsLotStartLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
