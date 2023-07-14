create   proc [stage].[prcLoadSAB_ConsCSRequestVendorSchedule] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestVendorSchedule t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestVendorSchedule s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestVendorSchedule with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestVendorSchedule where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[InsuranceReason]=s.[InsuranceReason],[LineNumber]=s.[LineNumber],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Request]=s.[Request],[TradeType]=s.[TradeType],[Vendor]=s.[Vendor],[WarrantyExpiryDate]=s.[WarrantyExpiryDate],[WarrantyVendor]=s.[WarrantyVendor]
when not matched then insert(
	[DataLakeModified_DateTime],[InsuranceReason],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Request],[TradeType],[Vendor],[WarrantyExpiryDate],[WarrantyVendor]
)
values (
[DataLakeModified_DateTime],[InsuranceReason],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Request],[TradeType],[Vendor],[WarrantyExpiryDate],[WarrantyVendor]
);

end
GO
