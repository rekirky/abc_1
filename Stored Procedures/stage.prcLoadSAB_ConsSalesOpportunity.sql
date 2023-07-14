create   proc [stage].[prcLoadSAB_ConsSalesOpportunity] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesOpportunity t 
where exists 
	(select 1 from stage.SAB_ConsSalesOpportunity s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesOpportunity with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesOpportunity where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ContactByEmail]=s.[ContactByEmail],[ContactByEmailFlag]=s.[ContactByEmailFlag],[ContactByMail]=s.[ContactByMail],[ContactByMailFlag]=s.[ContactByMailFlag],[ContactByPhone]=s.[ContactByPhone],[ContactByPhoneFlag]=s.[ContactByPhoneFlag],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Inactive]=s.[Inactive],[InactiveFlag]=s.[InactiveFlag],[InactiveReason]=s.[InactiveReason],[OpportunityId]=s.[OpportunityId],[OwnerWorker]=s.[OwnerWorker],[PARTITION]=s.[PARTITION],[Party]=s.[Party],[PrimaryContact]=s.[PrimaryContact],[Probability]=s.[Probability],[PropertyUseRecId]=s.[PropertyUseRecId],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesContingentReason]=s.[SalesContingentReason],[Source]=s.[Source],[Type]=s.[Type]
when not matched then insert(
	[ContactByEmail],[ContactByEmailFlag],[ContactByMail],[ContactByMailFlag],[ContactByPhone],[ContactByPhoneFlag],[CREATEDDATETIME],[DataLakeModified_DateTime],[Inactive],[InactiveFlag],[InactiveReason],[OpportunityId],[OwnerWorker],[PARTITION],[Party],[PrimaryContact],[Probability],[PropertyUseRecId],[RECID],[RECVERSION],[SalesContingentReason],[Source],[Type]
)
values (
[ContactByEmail],[ContactByEmailFlag],[ContactByMail],[ContactByMailFlag],[ContactByPhone],[ContactByPhoneFlag],[CREATEDDATETIME],[DataLakeModified_DateTime],[Inactive],[InactiveFlag],[InactiveReason],[OpportunityId],[OwnerWorker],[PARTITION],[Party],[PrimaryContact],[Probability],[PropertyUseRecId],[RECID],[RECVERSION],[SalesContingentReason],[Source],[Type]
);

end
GO
