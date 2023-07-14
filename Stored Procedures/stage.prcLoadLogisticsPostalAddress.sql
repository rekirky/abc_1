create   proc [stage].[prcLoadLogisticsPostalAddress] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LogisticsPostalAddress t 
where exists 
	(select 1 from stage.LogisticsPostalAddress s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LogisticsPostalAddress with(tablock) as t
using (select * from blobTransInc.LogisticsPostalAddress where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Address]=s.[Address],[Apartment_RU]=s.[Apartment_RU],[Building_RU]=s.[Building_RU],[BuildingCompliment]=s.[BuildingCompliment],[ChannelReferenceId]=s.[ChannelReferenceId],[City]=s.[City],[CityKana_JP]=s.[CityKana_JP],[CityRecId]=s.[CityRecId],[CountryRegionId]=s.[CountryRegionId],[County]=s.[County],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[District]=s.[District],[DistrictName]=s.[DistrictName],[FlatId_RU]=s.[FlatId_RU],[HouseId_RU]=s.[HouseId_RU],[IsPrivate]=s.[IsPrivate],[IsSimplifiedAddress_RU]=s.[IsSimplifiedAddress_RU],[Latitude]=s.[Latitude],[LocalityRecId]=s.[LocalityRecId],[Location]=s.[Location],[Longitude]=s.[Longitude],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[PARTITION]=s.[PARTITION],[PostBox]=s.[PostBox],[PrivateForParty]=s.[PrivateForParty],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SettlementRecId]=s.[SettlementRecId],[State]=s.[State],[SteadId_RU]=s.[SteadId_RU],[Street]=s.[Street],[StreetId_RU]=s.[StreetId_RU],[StreetKana_JP]=s.[StreetKana_JP],[StreetNumber]=s.[StreetNumber],[TimeZone]=s.[TimeZone],[TimeZoneEnumID]=s.[TimeZoneEnumID],[ValidFrom]=s.[ValidFrom],[VALIDFROMTZID]=s.[VALIDFROMTZID],[ValidTo]=s.[ValidTo],[VALIDTOTZID]=s.[VALIDTOTZID],[ZipCode]=s.[ZipCode],[ZipCodeRecId]=s.[ZipCodeRecId]
when not matched then insert(
	[Address],[Apartment_RU],[Building_RU],[BuildingCompliment],[ChannelReferenceId],[City],[CityKana_JP],[CityRecId],[CountryRegionId],[County],[DataLakeModified_DateTime],[District],[DistrictName],[FlatId_RU],[HouseId_RU],[IsPrivate],[IsSimplifiedAddress_RU],[Latitude],[LocalityRecId],[Location],[Longitude],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PostBox],[PrivateForParty],[RECID],[RECVERSION],[SettlementRecId],[State],[SteadId_RU],[Street],[StreetId_RU],[StreetKana_JP],[StreetNumber],[TimeZone],[TimeZoneEnumID],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID],[ZipCode],[ZipCodeRecId]
)
values (
[Address],[Apartment_RU],[Building_RU],[BuildingCompliment],[ChannelReferenceId],[City],[CityKana_JP],[CityRecId],[CountryRegionId],[County],[DataLakeModified_DateTime],[District],[DistrictName],[FlatId_RU],[HouseId_RU],[IsPrivate],[IsSimplifiedAddress_RU],[Latitude],[LocalityRecId],[Location],[Longitude],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PostBox],[PrivateForParty],[RECID],[RECVERSION],[SettlementRecId],[State],[SteadId_RU],[Street],[StreetId_RU],[StreetKana_JP],[StreetNumber],[TimeZone],[TimeZoneEnumID],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID],[ZipCode],[ZipCodeRecId]
);

end
GO
