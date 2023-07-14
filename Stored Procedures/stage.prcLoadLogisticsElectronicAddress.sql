create   proc [stage].[prcLoadLogisticsElectronicAddress] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LogisticsElectronicAddress t 
where exists 
	(select 1 from stage.LogisticsElectronicAddress s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LogisticsElectronicAddress with(tablock) as t
using (select * from blobTransInc.LogisticsElectronicAddress where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ChannelReferenceId]=s.[ChannelReferenceId],[CountryRegionCode]=s.[CountryRegionCode],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[ElectronicAddressId]=s.[ElectronicAddressId],[ElectronicAddressRoles]=s.[ElectronicAddressRoles],[IsInstantMessage]=s.[IsInstantMessage],[IsMobilePhone]=s.[IsMobilePhone],[IsPrimary]=s.[IsPrimary],[IsPrivate]=s.[IsPrivate],[Location]=s.[Location],[Locator]=s.[Locator],[LocatorExtension]=s.[LocatorExtension],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[OH_ContactPartyRecId]=s.[OH_ContactPartyRecId],[PARTITION]=s.[PARTITION],[PrivateForParty]=s.[PrivateForParty],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RetailMarketingOptIn]=s.[RetailMarketingOptIn],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[ChannelReferenceId],[CountryRegionCode],[DataLakeModified_DateTime],[Description],[ElectronicAddressId],[ElectronicAddressRoles],[IsInstantMessage],[IsMobilePhone],[IsPrimary],[IsPrivate],[Location],[Locator],[LocatorExtension],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_ContactPartyRecId],[PARTITION],[PrivateForParty],[RECID],[RECVERSION],[RetailMarketingOptIn],[Type],[TypeEnumID]
)
values (
[ChannelReferenceId],[CountryRegionCode],[DataLakeModified_DateTime],[Description],[ElectronicAddressId],[ElectronicAddressRoles],[IsInstantMessage],[IsMobilePhone],[IsPrimary],[IsPrivate],[Location],[Locator],[LocatorExtension],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_ContactPartyRecId],[PARTITION],[PrivateForParty],[RECID],[RECVERSION],[RetailMarketingOptIn],[Type],[TypeEnumID]
);

end
GO
