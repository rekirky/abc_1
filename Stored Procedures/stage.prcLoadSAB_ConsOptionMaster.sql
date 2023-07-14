create   proc [stage].[prcLoadSAB_ConsOptionMaster] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionMaster t 
where exists 
	(select 1 from stage.SAB_ConsOptionMaster s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionMaster with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionMaster where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[OPTION_]=s.[OPTION_],[OptionMasterId]=s.[OptionMasterId],[ParentOptionMaster]=s.[ParentOptionMaster],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Sorting]=s.[Sorting]
when not matched then insert(
	[DataLakeModified_DateTime],[OPTION_],[OptionMasterId],[ParentOptionMaster],[PARTITION],[RECID],[RECVERSION],[Sorting]
)
values (
[DataLakeModified_DateTime],[OPTION_],[OptionMasterId],[ParentOptionMaster],[PARTITION],[RECID],[RECVERSION],[Sorting]
);

end
GO
