create   proc [stage].[prcLoadContactPerson] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.ContactPerson t 
where exists 
	(select 1 from stage.ContactPerson s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.ContactPerson with(tablock) as t
using (select * from blobTransInc.ContactPerson where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AssistantName]=s.[AssistantName],[AssistantPhone]=s.[AssistantPhone],[BillingInformation]=s.[BillingInformation],[Character]=s.[Character],[ComputerNetworkName]=s.[ComputerNetworkName],[ContactForParty]=s.[ContactForParty],[ContactPersonId]=s.[ContactPersonId],[ContactPersonParentId]=s.[ContactPersonParentId],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CustAccount]=s.[CustAccount],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Decision]=s.[Decision],[Department]=s.[Department],[DirectMail]=s.[DirectMail],[DocuGreeting1]=s.[DocuGreeting1],[DocuGreeting2]=s.[DocuGreeting2],[DocuIntro1]=s.[DocuIntro1],[DocuIntro2]=s.[DocuIntro2],[FUNCTION_]=s.[FUNCTION_],[GovernmentIDNumber]=s.[GovernmentIDNumber],[Imported]=s.[Imported],[Inactive]=s.[Inactive],[IsContactPersonExternallyMaintained]=s.[IsContactPersonExternallyMaintained],[LastEditAxDateTime]=s.[LastEditAxDateTime],[LASTEDITAXDATETIMETZID]=s.[LASTEDITAXDATETIMETZID],[Loyalty]=s.[Loyalty],[MainResponsibleWorker]=s.[MainResponsibleWorker],[MCRIsDefaultContact]=s.[MCRIsDefaultContact],[MCRIsDefaultContactFlag]=s.[MCRIsDefaultContactFlag],[Mileage]=s.[Mileage],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[OfficeLocation]=s.[OfficeLocation],[OrganizationalIDNumber]=s.[OrganizationalIDNumber],[OutlookCategories]=s.[OutlookCategories],[PARTITION]=s.[PARTITION],[Party]=s.[Party],[PayeeDocument_RU]=s.[PayeeDocument_RU],[Profession]=s.[Profession],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Sensitivity]=s.[Sensitivity],[SensitivityEnumID]=s.[SensitivityEnumID],[Spouse]=s.[Spouse],[TimeAvailableFrom]=s.[TimeAvailableFrom],[TimeAvailableTo]=s.[TimeAvailableTo],[Title]=s.[Title],[VendorPortalAccessAllowed]=s.[VendorPortalAccessAllowed],[VendRole]=s.[VendRole],[VendRoleEnumID]=s.[VendRoleEnumID],[VIP]=s.[VIP],[WebRequestAccess]=s.[WebRequestAccess]
when not matched then insert(
	[AssistantName],[AssistantPhone],[BillingInformation],[Character],[ComputerNetworkName],[ContactForParty],[ContactPersonId],[ContactPersonParentId],[CREATEDBY],[CREATEDDATETIME],[CustAccount],[DataAreaId],[DataLakeModified_DateTime],[Decision],[Department],[DirectMail],[DocuGreeting1],[DocuGreeting2],[DocuIntro1],[DocuIntro2],[FUNCTION_],[GovernmentIDNumber],[Imported],[Inactive],[IsContactPersonExternallyMaintained],[LastEditAxDateTime],[LASTEDITAXDATETIMETZID],[Loyalty],[MainResponsibleWorker],[MCRIsDefaultContact],[MCRIsDefaultContactFlag],[Mileage],[MODIFIEDBY],[MODIFIEDDATETIME],[OfficeLocation],[OrganizationalIDNumber],[OutlookCategories],[PARTITION],[Party],[PayeeDocument_RU],[Profession],[RECID],[RECVERSION],[Sensitivity],[SensitivityEnumID],[Spouse],[TimeAvailableFrom],[TimeAvailableTo],[Title],[VendorPortalAccessAllowed],[VendRole],[VendRoleEnumID],[VIP],[WebRequestAccess]
)
values (
[AssistantName],[AssistantPhone],[BillingInformation],[Character],[ComputerNetworkName],[ContactForParty],[ContactPersonId],[ContactPersonParentId],[CREATEDBY],[CREATEDDATETIME],[CustAccount],[DataAreaId],[DataLakeModified_DateTime],[Decision],[Department],[DirectMail],[DocuGreeting1],[DocuGreeting2],[DocuIntro1],[DocuIntro2],[FUNCTION_],[GovernmentIDNumber],[Imported],[Inactive],[IsContactPersonExternallyMaintained],[LastEditAxDateTime],[LASTEDITAXDATETIMETZID],[Loyalty],[MainResponsibleWorker],[MCRIsDefaultContact],[MCRIsDefaultContactFlag],[Mileage],[MODIFIEDBY],[MODIFIEDDATETIME],[OfficeLocation],[OrganizationalIDNumber],[OutlookCategories],[PARTITION],[Party],[PayeeDocument_RU],[Profession],[RECID],[RECVERSION],[Sensitivity],[SensitivityEnumID],[Spouse],[TimeAvailableFrom],[TimeAvailableTo],[Title],[VendorPortalAccessAllowed],[VendRole],[VendRoleEnumID],[VIP],[WebRequestAccess]
);

end
GO
