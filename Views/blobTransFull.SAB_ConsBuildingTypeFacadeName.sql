create   view [blobTransFull].[SAB_ConsBuildingTypeFacadeName] as select 
LSN,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeDescription]
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsBuildingTypeFacadeName t
GO
