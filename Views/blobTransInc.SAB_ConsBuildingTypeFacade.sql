create   view [blobTransInc].[SAB_ConsBuildingTypeFacade] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeDescription]
,[FacadeId]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsBuildingTypeFacade t
GO
