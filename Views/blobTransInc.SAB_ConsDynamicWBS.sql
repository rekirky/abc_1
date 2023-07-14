create   view [blobTransInc].[SAB_ConsDynamicWBS] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
,[Concurrency]
,[ConstructionPhase]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Duration]
,[ElementType]
,[EnumerationAttributeValue]
,[FacadeId]
,[GroupCount]
,[GroupRule]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityGroupRule' and e.EnumCode=t.[GroupRule]) ,GroupRuleEnumID=[GroupRule]
,[LotStructureElement]
,[Milestone]
,[OptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReleaseGroup]
,[ReportingActivity]
,[Responsibility]
,[StockStatus]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsDynamicWBS t
GO
