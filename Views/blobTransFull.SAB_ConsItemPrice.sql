create   view [blobTransFull].[SAB_ConsItemPrice] as select 
LSN,[BuildingTypeId]
,[ChangeReason]
,[CostCategory]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[ItemId]
,[Location]
,[LocationGroup]
,[Lot]
,[LotStructureElement]
,[MasterAgreementVersion]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OH_IncludeParentPricing]
,[OH_OptionUpgradePrice]
,[OPTION_]
,[ParentOptionMaster]
,[PARTITION]
,[Price]=cast([Price] as numeric(18,2))
,[PriceType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsPriceType' and e.EnumCode=t.[PriceType]) ,PriceTypeEnumID=[PriceType]
,[RECID]
,[RECVERSION]
,[UnitId]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
,[Vendor]
,[ZeroPriceIndicator]
 from stage.SAB_ConsItemPrice t
GO
