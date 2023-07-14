create   view [blobTransInc].[SAB_ConsBuildingTypeFacadeValidation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[CREATEDBY]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
 from stage.SAB_ConsBuildingTypeFacadeValidation t
GO
