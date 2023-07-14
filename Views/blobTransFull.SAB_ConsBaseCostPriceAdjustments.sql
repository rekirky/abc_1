create   view [blobTransFull].[SAB_ConsBaseCostPriceAdjustments] as select 
LSN,[BuildingTypeId]
,[CostAdjustmentAmount]=cast([CostAdjustmentAmount] as numeric(18,2))
,[CostAdjustmentPercent]=cast([CostAdjustmentPercent] as numeric(18,6))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from blobFull.SAB_ConsBaseCostPriceAdjustments t
GO
