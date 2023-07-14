create   proc [stage].[prcLoadSAB_ConsLotStartLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotStartLine t 
where exists 
	(select 1 from stage.SAB_ConsLotStartLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotStartLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotStartLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[Inactive]=s.[Inactive],[InactiveFlag]=s.[InactiveFlag],[LotStart]=s.[LotStart],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[WBSBuildingTypeEnumerationAttributeValue]=s.[WBSBuildingTypeEnumerationAttributeValue]
when not matched then insert(
	[CREATEDDATETIME],[DataLakeModified_DateTime],[FinancialInstance],[Inactive],[InactiveFlag],[LotStart],[PARTITION],[RECID],[RECVERSION],[WBSBuildingTypeEnumerationAttributeValue]
)
values (
[CREATEDDATETIME],[DataLakeModified_DateTime],[FinancialInstance],[Inactive],[InactiveFlag],[LotStart],[PARTITION],[RECID],[RECVERSION],[WBSBuildingTypeEnumerationAttributeValue]
);

end
GO
