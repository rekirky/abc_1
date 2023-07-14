create   view [blobTransInc].[SAB_ConsDesignCenterAttribute] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
,[AttributeValue]
,[BuildingTypeId]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[Location]
,[LocationGroup]
,[LotStructureElement]
,[OPTION_]
,[OptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[ValidationMode]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsDesignCenterAttributeValidationMode' and e.EnumCode=t.[ValidationMode]) ,ValidationModeEnumID=[ValidationMode]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
 from stage.SAB_ConsDesignCenterAttribute t
GO
