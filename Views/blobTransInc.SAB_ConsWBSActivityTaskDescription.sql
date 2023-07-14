create   view [blobTransInc].[SAB_ConsWBSActivityTaskDescription] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ActivityTask]
,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EnumerationAttributeValue]
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsWBSActivityTaskDescription t
GO
