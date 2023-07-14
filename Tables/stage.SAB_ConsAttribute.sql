CREATE TABLE [stage].[SAB_ConsAttribute]
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
[AttributeClass_BuildingType] [varchar] (51) NULL,
[AttributeClass_Option] [varchar] (51) NULL,
[AttributeClass_LandBank] [varchar] (51) NULL,
[AttributeTab] [bigint] NULL,
[DataType] [varchar] (51) NULL,
[IsEnumeration] [varchar] (51) NULL,
[LocationDependent] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[SalesDocumentPriceBreakout] [varchar] (51) NULL,
[Sorting] [int] NULL,
[Usage] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[UseAdjustedMeasurement] [varchar] (51) NULL,
[MultiSelect] [varchar] (51) NULL,
[MultiLine] [varchar] (51) NULL
) ON [PRIMARY]
GO
