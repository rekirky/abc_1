create   proc [stage].[prcLoadSAB_ConsOptionCategoryLookup] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionCategoryLookup t 
where exists 
	(select 1 from stage.SAB_ConsOptionCategoryLookup s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionCategoryLookup with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionCategoryLookup where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CategoryLevel]=s.[CategoryLevel],[CategoryLevelParent]=s.[CategoryLevelParent],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[OptionCategory]=s.[OptionCategory],[OptionCategoryParent]=s.[OptionCategoryParent],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[CategoryLevel],[CategoryLevelParent],[DataLakeModified_DateTime],[OptionCategory],[OptionCategoryParent],[PARTITION],[RECID],[RECVERSION]
)
values (
[CategoryLevel],[CategoryLevelParent],[DataLakeModified_DateTime],[OptionCategory],[OptionCategoryParent],[PARTITION],[RECID],[RECVERSION]
);

end
GO
