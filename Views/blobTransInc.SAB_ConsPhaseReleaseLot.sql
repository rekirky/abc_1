create   view [blobTransInc].[SAB_ConsPhaseReleaseLot] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[ColorScheme]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DevelopmentId]
,[FacadeId]
,[FinancialInstance]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[PARTITION]
,[PhaseRelease]
,[RECID]
,[RECVERSION]
,[Sorting]
,[StatusId]
,[StockStatus]
 from stage.SAB_ConsPhaseReleaseLot t
GO
