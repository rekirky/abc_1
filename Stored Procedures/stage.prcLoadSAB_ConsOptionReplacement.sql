create   proc [stage].[prcLoadSAB_ConsOptionReplacement] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionReplacement t 
where exists 
	(select 1 from stage.SAB_ConsOptionReplacement s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionReplacement with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionReplacement where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[OptionMaster]=s.[OptionMaster],[OptionMasterReplacement]=s.[OptionMasterReplacement],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[DataLakeModified_DateTime],[OptionMaster],[OptionMasterReplacement],[PARTITION],[RECID],[RECVERSION]
)
values (
[DataLakeModified_DateTime],[OptionMaster],[OptionMasterReplacement],[PARTITION],[RECID],[RECVERSION]
);

end
GO
