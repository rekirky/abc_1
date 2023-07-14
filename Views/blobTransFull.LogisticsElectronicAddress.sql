create   view [blobTransFull].[LogisticsElectronicAddress] as select 
LSN,[ChannelReferenceId]
,[CountryRegionCode]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[ElectronicAddressId]
,[ElectronicAddressRoles]
,[IsInstantMessage]
,[IsMobilePhone]
,[IsPrimary]
,[IsPrivate]
,[Location]
,[Locator]
,[LocatorExtension]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OH_ContactPartyRecId]
,[PARTITION]
,[PrivateForParty]
,[RECID]
,[RECVERSION]
,[RetailMarketingOptIn]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LogisticsElectronicAddressMethodType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.LogisticsElectronicAddress t
GO
