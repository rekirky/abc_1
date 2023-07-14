CREATE TABLE [dbo].[SAB_ConsBaseCostPriceAdjustments]
(
[BuildingTypeId] [varchar] (20) NULL,
[CostAdjustmentAmount] [numeric] (18, 2) NULL,
[CostAdjustmentPercent] [numeric] (18, 6) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBaseCostPriceAdjustments] ADD CONSTRAINT [PK_SAB_ConsBaseCostPriceAdjustments_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
