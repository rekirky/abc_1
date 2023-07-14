create   view [blobTransInc].[LogisticsAddressCountryRegion] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AddressUseZipPlus4]
,[AddrFormat]
,[BACENCode_BR]
,[CountryRegionId]
,[CurrencyCode]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IsImmutable]
,[ISOcode]
,[MCRIOR_Facility_ID]
,[MemberOfCustomsUnion_RU]
,[OKSMCode_RU]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RPayParentCountryRegionId]
,[TimeZone]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='Timezone' and e.EnumCode=t.[TimeZone]) ,TimeZoneEnumID=[TimeZone]
 from stage.LogisticsAddressCountryRegion t
GO
