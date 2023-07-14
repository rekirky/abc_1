CREATE TABLE [dbo].[DimensionAttributeValueGroupCombination]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DimensionAttributeValueCombination] [bigint] NULL,
[DimensionAttributeValueGroup] [bigint] NULL,
[MODIFIEDDATETIME] [date] NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[Ordinal] [int] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimensionAttributeValueGroupCombination] ADD CONSTRAINT [PK_DimensionAttributeValueGroupCombination_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
