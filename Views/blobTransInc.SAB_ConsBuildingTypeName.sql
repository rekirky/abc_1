create   view [blobTransInc].[SAB_ConsBuildingTypeName] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsBuildingTypeName t
GO
