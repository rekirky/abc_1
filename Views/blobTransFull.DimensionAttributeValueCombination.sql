create   view [blobTransFull].[DimensionAttributeValueCombination] as select 
LSN,[AccountStructure]
,[AGREEMENT]
,[AGREEMENTVALUE]
,[BANK]
,[BANKVALUE]
,[COMMUNITYORLANDPROPERTY]
,[COMMUNITYORLANDPROPERTYVALUE]
,[COUNTY]
,[COUNTYVALUE]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataAreaForCreation]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DisplayValue]
,[DIVISION]
,[DIVISIONVALUE]
,[Hash]
,[HashVersion]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionHashVersion' and e.EnumCode=t.[HashVersion]) ,HashVersionEnumID=[HashVersion]
,[ImpliedDataAreaId]
,[LedgerDimensionType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerDimensionType' and e.EnumCode=t.[LedgerDimensionType]) ,LedgerDimensionTypeEnumID=[LedgerDimensionType]
,[LEGALENTITY]
,[LEGALENTITYVALUE]
,[MainAccount]
,[MainAccountValue]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PRODUCTTYPE]
,[PRODUCTTYPEVALUE]
,[RECID]
,[RECVERSION]
,[SERIES]
,[SERIESVALUE]
,[SOFTWARE]
,[SOFTWAREVALUE]
,[SYSTEMGENERATEDATTRIBUTEBANKACCOUNT]
,[SYSTEMGENERATEDATTRIBUTEBANKACCOUNTVALUE]
,[SYSTEMGENERATEDATTRIBUTECUSTOMER]
,[SYSTEMGENERATEDATTRIBUTECUSTOMERVALUE]
,[SYSTEMGENERATEDATTRIBUTEEMPLOYEE]
,[SYSTEMGENERATEDATTRIBUTEEMPLOYEE_RU]
,[SYSTEMGENERATEDATTRIBUTEEMPLOYEE_RUVALUE]
,[SYSTEMGENERATEDATTRIBUTEEMPLOYEEVALUE]
,[SYSTEMGENERATEDATTRIBUTEFIXEDASSET]
,[SYSTEMGENERATEDATTRIBUTEFIXEDASSETS_RU]
,[SYSTEMGENERATEDATTRIBUTEFIXEDASSETS_RUVALUE]
,[SYSTEMGENERATEDATTRIBUTEFIXEDASSETVALUE]
,[SYSTEMGENERATEDATTRIBUTEITEM]
,[SYSTEMGENERATEDATTRIBUTEITEMVALUE]
,[SYSTEMGENERATEDATTRIBUTEPROJECT]
,[SYSTEMGENERATEDATTRIBUTEPROJECTVALUE]
,[SYSTEMGENERATEDATTRIBUTERCASH]
,[SYSTEMGENERATEDATTRIBUTERCASHVALUE]
,[SYSTEMGENERATEDATTRIBUTERDEFERRALS]
,[SYSTEMGENERATEDATTRIBUTERDEFERRALSVALUE]
,[SYSTEMGENERATEDATTRIBUTEVENDOR]
,[SYSTEMGENERATEDATTRIBUTEVENDORVALUE]
 from blobFull.DimensionAttributeValueCombination t
GO
