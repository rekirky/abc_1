create   view [blobTransFull].[SAB_ConsBuildingTypeName] as select 
LSN,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsBuildingTypeName t
GO
