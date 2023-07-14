create   view [blobTransInc].[SAB_ConsOptionValidation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AddSalesPriceToBase]=case when [AddSalesPriceToBase]=1 then 'Yes' else 'No' end ,AddSalesPriceToBaseFlag=cast([AddSalesPriceToBase] as bit)
,[BuildingTypeId]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[Location]
,[LocationGroup]
,[LotGroup]
,[LotStructureElement]
,[Mandatory]=case when [Mandatory]=1 then 'Yes' else 'No' end ,MandatoryFlag=cast([Mandatory] as bit)
,[OPTION_]
,[OptionCategory]
,[OptionRestriction]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOptionRestriction' and e.EnumCode=t.[OptionRestriction]) ,OptionRestrictionEnumID=[OptionRestriction]
,[ParentOptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Subfloor]
,[ValidationMode]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsValidationMode' and e.EnumCode=t.[ValidationMode]) ,ValidationModeEnumID=[ValidationMode]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
 from stage.SAB_ConsOptionValidation t
GO
