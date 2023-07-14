create   view [blobTransFull].[SAB_ConsWBSActivityTaskDescription] as select 
LSN,[ActivityTask]
,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EnumerationAttributeValue]
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsWBSActivityTaskDescription t
GO
