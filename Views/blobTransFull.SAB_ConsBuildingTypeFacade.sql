create   view [blobTransFull].[SAB_ConsBuildingTypeFacade] as select 
LSN,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeDescription]
,[FacadeId]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsBuildingTypeFacade t
GO
