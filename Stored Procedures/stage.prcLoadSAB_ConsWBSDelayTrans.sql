create   proc [stage].[prcLoadSAB_ConsWBSDelayTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWBSDelayTrans t 
where exists 
	(select 1 from stage.SAB_ConsWBSDelayTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWBSDelayTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsWBSDelayTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ActivityNumber]=s.[ActivityNumber],[CREATEDBY]=s.[CREATEDBY],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DelayReason]=s.[DelayReason],[FinancialInstance]=s.[FinancialInstance],[NumberOfDays]=s.[NumberOfDays],[OH_DelayOwner]=s.[OH_DelayOwner],[OH_LockState]=s.[OH_LockState],[OH_LockStateEnumID]=s.[OH_LockStateEnumID],[OH_UpdateType]=s.[OH_UpdateType],[OH_UpdateTypeEnumID]=s.[OH_UpdateTypeEnumID],[OH_UpdateTypeSet]=s.[OH_UpdateTypeSet],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SchedEndDateNew]=s.[SchedEndDateNew],[SchedEndDateOrig]=s.[SchedEndDateOrig],[SchedStartDateNew]=s.[SchedStartDateNew],[SchedStartDateOrig]=s.[SchedStartDateOrig],[TransDate]=s.[TransDate]
when not matched then insert(
	[ActivityNumber],[CREATEDBY],[DataLakeModified_DateTime],[DelayReason],[FinancialInstance],[NumberOfDays],[OH_DelayOwner],[OH_LockState],[OH_LockStateEnumID],[OH_UpdateType],[OH_UpdateTypeEnumID],[OH_UpdateTypeSet],[PARTITION],[RECID],[RECVERSION],[SchedEndDateNew],[SchedEndDateOrig],[SchedStartDateNew],[SchedStartDateOrig],[TransDate]
)
values (
[ActivityNumber],[CREATEDBY],[DataLakeModified_DateTime],[DelayReason],[FinancialInstance],[NumberOfDays],[OH_DelayOwner],[OH_LockState],[OH_LockStateEnumID],[OH_UpdateType],[OH_UpdateTypeEnumID],[OH_UpdateTypeSet],[PARTITION],[RECID],[RECVERSION],[SchedEndDateNew],[SchedEndDateOrig],[SchedStartDateNew],[SchedStartDateOrig],[TransDate]
);

end
GO
