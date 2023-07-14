create   proc [stage].[prcLoadSAB_ConsCSRequestWorkDetailLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestWorkDetailLine t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestWorkDetailLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestWorkDetailLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestWorkDetailLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[CostCategory]=s.[CostCategory],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LineNumber]=s.[LineNumber],[Name]=s.[Name],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RequestLine]=s.[RequestLine],[RequestWorkDetail]=s.[RequestWorkDetail],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup]
when not matched then insert(
	[Amount],[CostCategory],[DataLakeModified_DateTime],[LineNumber],[Name],[PARTITION],[RECID],[RECVERSION],[RequestLine],[RequestWorkDetail],[TaxGroup],[TaxItemGroup]
)
values (
[Amount],[CostCategory],[DataLakeModified_DateTime],[LineNumber],[Name],[PARTITION],[RECID],[RECVERSION],[RequestLine],[RequestWorkDetail],[TaxGroup],[TaxItemGroup]
);

end
GO
