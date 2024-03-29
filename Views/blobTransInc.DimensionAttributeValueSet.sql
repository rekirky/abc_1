create   view [blobTransInc].[DimensionAttributeValueSet] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AGREEMENT]
,[AGREEMENTVALUE]
,[BANK]
,[BANKVALUE]
,[COMMUNITYORLANDPROPERTY]
,[COMMUNITYORLANDPROPERTYVALUE]
,[COUNTY]
,[COUNTYVALUE]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DIVISION]
,[DIVISIONVALUE]
,[Hash]
,[HashVersion]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionHashVersion' and e.EnumCode=t.[HashVersion]) ,HashVersionEnumID=[HashVersion]
,[ImpliedDataAreaId]
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
 from stage.DimensionAttributeValueSet t
GO
