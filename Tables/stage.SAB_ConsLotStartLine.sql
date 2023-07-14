CREATE TABLE [stage].[SAB_ConsLotStartLine]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[Inactive] [varchar] (51) NULL,
[LotStart] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[WBSBuildingTypeEnumerationAttributeValue] [bigint] NULL
) ON [PRIMARY]
GO
