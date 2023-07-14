create   view [blobTransInc].[SAB_ConsDocuTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DocumentDate]=cast([DocumentDate] as date)
,[DocuType]
,[FacadeId]
,[FinancialInstance]
,[OH_BlockedDelete]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from stage.SAB_ConsDocuTable t
GO
