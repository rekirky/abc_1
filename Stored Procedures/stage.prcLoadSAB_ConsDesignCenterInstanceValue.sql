create   proc [stage].[prcLoadSAB_ConsDesignCenterInstanceValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsDesignCenterInstanceValue t 
where exists 
	(select 1 from stage.SAB_ConsDesignCenterInstanceValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsDesignCenterInstanceValue with(tablock) as t
using (select * from blobTransInc.SAB_ConsDesignCenterInstanceValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FINANCIALINSTANCE]=s.[FINANCIALINSTANCE],[InstanceRelationType]=s.[InstanceRelationType],[OPTIONTEMPLATE]=s.[OPTIONTEMPLATE],[PARTITION]=s.[PARTITION],[PHASERELEASELOT]=s.[PHASERELEASELOT],[PSEUDOLOT]=s.[PSEUDOLOT],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RELATIONTYPE]=s.[RELATIONTYPE],[SALESDESIGNVERSION]=s.[SALESDESIGNVERSION],[SALESQUICKQUOTATION]=s.[SALESQUICKQUOTATION]
when not matched then insert(
	[DataLakeModified_DateTime],[FINANCIALINSTANCE],[InstanceRelationType],[OPTIONTEMPLATE],[PARTITION],[PHASERELEASELOT],[PSEUDOLOT],[RECID],[RECVERSION],[RELATIONTYPE],[SALESDESIGNVERSION],[SALESQUICKQUOTATION]
)
values (
[DataLakeModified_DateTime],[FINANCIALINSTANCE],[InstanceRelationType],[OPTIONTEMPLATE],[PARTITION],[PHASERELEASELOT],[PSEUDOLOT],[RECID],[RECVERSION],[RELATIONTYPE],[SALESDESIGNVERSION],[SALESQUICKQUOTATION]
);

end
GO
