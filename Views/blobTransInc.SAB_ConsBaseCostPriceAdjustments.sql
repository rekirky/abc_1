create   view [blobTransInc].[SAB_ConsBaseCostPriceAdjustments] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
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
 from stage.SAB_ConsBaseCostPriceAdjustments t
GO
