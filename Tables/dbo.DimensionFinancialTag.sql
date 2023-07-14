CREATE TABLE [dbo].[DimensionFinancialTag]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[FinancialTagCategory] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Value] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimensionFinancialTag] ADD CONSTRAINT [PK_DimensionFinancialTag_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DimensionFinancialTag] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[DimensionFinancialTag] TO [OH_BasicReadOnly]
GO
