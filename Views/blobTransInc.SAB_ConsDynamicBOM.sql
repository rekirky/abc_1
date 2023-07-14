create   view [blobTransInc].[SAB_ConsDynamicBOM] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[ChangeReason]
,[CostCategory]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[ItemId]
,[Location]
,[LocationGroup]
,[LotStructureElement]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OPTION_]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientation' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[PARTITION]
,[Qty]
,[RECID]
,[RECVERSION]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsDynamicBOMType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UnitId]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
 from stage.SAB_ConsDynamicBOM t
GO
