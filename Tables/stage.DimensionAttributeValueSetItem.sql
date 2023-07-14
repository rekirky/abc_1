CREATE TABLE [stage].[DimensionAttributeValueSetItem]
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
[DimensionAttributeValue] [bigint] NULL,
[DimensionAttributeValueSet] [bigint] NULL,
[DisplayValue] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[BackingRecordDataAreaId] [varchar] (4) NULL
) ON [PRIMARY]
GO
