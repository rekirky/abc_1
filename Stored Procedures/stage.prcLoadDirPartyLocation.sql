create   proc [stage].[prcLoadDirPartyLocation] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.DirPartyLocation t 
where exists 
	(select 1 from stage.DirPartyLocation s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.DirPartyLocation with(tablock) as t
using (select * from blobTransInc.DirPartyLocation where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AttentionToAddressLine]=s.[AttentionToAddressLine],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[IsLocationOwner]=s.[IsLocationOwner],[IsPostalAddress]=s.[IsPostalAddress],[IsPrimary]=s.[IsPrimary],[IsPrimaryTaxRegistration]=s.[IsPrimaryTaxRegistration],[IsPrivate]=s.[IsPrivate],[IsRoleBusiness]=s.[IsRoleBusiness],[IsRoleDelivery]=s.[IsRoleDelivery],[IsRoleHome]=s.[IsRoleHome],[IsRoleInvoice]=s.[IsRoleInvoice],[Location]=s.[Location],[MODIFIEDBY]=s.[MODIFIEDBY],[PARTITION]=s.[PARTITION],[Party]=s.[Party],[PostalAddressRoles]=s.[PostalAddressRoles],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[AttentionToAddressLine],[DataLakeModified_DateTime],[IsLocationOwner],[IsPostalAddress],[IsPrimary],[IsPrimaryTaxRegistration],[IsPrivate],[IsRoleBusiness],[IsRoleDelivery],[IsRoleHome],[IsRoleInvoice],[Location],[MODIFIEDBY],[PARTITION],[Party],[PostalAddressRoles],[RECID],[RECVERSION]
)
values (
[AttentionToAddressLine],[DataLakeModified_DateTime],[IsLocationOwner],[IsPostalAddress],[IsPrimary],[IsPrimaryTaxRegistration],[IsPrivate],[IsRoleBusiness],[IsRoleDelivery],[IsRoleHome],[IsRoleInvoice],[Location],[MODIFIEDBY],[PARTITION],[Party],[PostalAddressRoles],[RECID],[RECVERSION]
);

end
GO
