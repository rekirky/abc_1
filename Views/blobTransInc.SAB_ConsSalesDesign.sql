create   view [blobTransInc].[SAB_ConsSalesDesign] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[ColorScheme]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EstimateType]
,[FacadeId]
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[Lot]
,[LotStructureElement]
,[Name]
,[Opportunity]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[OwnerWorker]
,[PARTITION]
,[PlanChange]=case when [PlanChange]=1 then 'Yes' else 'No' end ,PlanChangeFlag=cast([PlanChange] as bit)
,[RECID]
,[RECVERSION]
,[SalesQuickQuotation]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDesignType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsSalesDesign t
GO
