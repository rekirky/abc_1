create   view [blobTransInc].[SAB_ConsBuildingTypeFacadeName] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeDescription]
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsBuildingTypeFacadeName t
GO
