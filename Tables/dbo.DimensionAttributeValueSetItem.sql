CREATE TABLE [dbo].[DimensionAttributeValueSetItem]
(
[BackingRecordDataAreaId] [varchar] (4) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DimensionAttributeValue] [bigint] NULL,
[DimensionAttributeValueSet] [bigint] NULL,
[DisplayValue] [varchar] (30) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimensionAttributeValueSetItem] ADD CONSTRAINT [PK_DimensionAttributeValueSetItem_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
