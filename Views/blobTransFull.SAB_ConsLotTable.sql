create   view [blobTransFull].[SAB_ConsLotTable] as select 
LSN,[ACCRUED]=case when [ACCRUED]=1 then 'Yes' else 'No' end ,ACCRUEDFlag=cast([ACCRUED] as bit)
,[BuildingTypeId]
,[BuyerOwned]=case when [BuyerOwned]=1 then 'Yes' else 'No' end ,BuyerOwnedFlag=cast([BuyerOwned] as bit)
,[CLOSED]=case when [CLOSED]=1 then 'Yes' else 'No' end ,CLOSEDFlag=cast([CLOSED] as bit)
,[ColorScheme]
,[CostPrice]=cast([CostPrice] as numeric(18,2))
,[CSAccrualGroup]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DevelopmentId]
,[FacadeId]
,[FINALIZATIONSTATUS]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotFinalizationStatus' and e.EnumCode=t.[FINALIZATIONSTATUS]) ,FINALIZATIONSTATUSEnumID=[FINALIZATIONSTATUS]
,[FINALIZED]=case when [FINALIZED]=1 then 'Yes' else 'No' end ,FINALIZEDFlag=cast([FINALIZED] as bit)
,[HasTitle]=case when [HasTitle]=1 then 'Yes' else 'No' end ,HasTitleFlag=cast([HasTitle] as bit)
,[JobType]
,[Location]
,[LotNo]
,[LotPremiumInventory]=cast([LotPremiumInventory] as numeric(18,2))
,[LotStatusId]
,[LotStructureElement]
,[OH_ConsLotPhase]
,[OH_ExternalSalesPrice]=cast([OH_ExternalSalesPrice] as numeric(18,2))
,[OH_LotMigrated]=case when [OH_LotMigrated]=1 then 'Yes' else 'No' end ,OH_LotMigratedFlag=cast([OH_LotMigrated] as bit)
,[OH_LotOwnershipType]
,[Orientation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOrientationNoneLeftRight' and e.EnumCode=t.[Orientation]) ,OrientationEnumID=[Orientation]
,[Ownership]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOwnership' and e.EnumCode=t.[Ownership]) ,OwnershipEnumID=[Ownership]
,[PARTITION]
,[PHASERELEASEID]
,[PriceLocked]=case when [PriceLocked]=1 then 'Yes' else 'No' end ,PriceLockedFlag=cast([PriceLocked] as bit)
,[PriceLockedAsOf]=cast(case when [PriceLockedAsOf] < cast('1901-01-01' as date) then null else dbo.fnConvertUtcStringToLocalDate([PriceLockedAsOf]) end as date)
,[PRICELOCKEDASOFTZID]
,[PriceLockedBy]
,[RECID]
,[RECVERSION]
,[RELEASEGROUP]
,[SalesPerson]
,[SalesPrice]=cast([SalesPrice] as numeric(18,2))
,[SalesPriceBase]=cast([SalesPriceBase] as numeric(18,2))
,[SalesPriceDiscount]=cast([SalesPriceDiscount] as numeric(18,2))
,[SalesPriceLotPremium]=cast([SalesPriceLotPremium] as numeric(18,2))
,[SalesPriceOption]=cast([SalesPriceOption] as numeric(18,2))
,[StockStatus]
,[Subfloor]
,[TarionEnrolmentNumber]
,[TitleDate]=cast(case when [TitleDate] < cast('1901-01-01' as date) then null else [TitleDate] end as date)
,[Tract]
 from blobFull.SAB_ConsLotTable t
GO
