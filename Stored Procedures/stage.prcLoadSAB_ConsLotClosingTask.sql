create   proc [stage].[prcLoadSAB_ConsLotClosingTask] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotClosingTask t 
where exists 
	(select 1 from stage.SAB_ConsLotClosingTask s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotClosingTask with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotClosingTask where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Area]=s.[Area],[Completed]=s.[Completed],[CompletedBy]=s.[CompletedBy],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DateCompleted]=s.[DateCompleted],[DateDue]=s.[DateDue],[Lot]=s.[Lot],[LotFinancialInstance]=s.[LotFinancialInstance],[Notes]=s.[Notes],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Responsibility]=s.[Responsibility],[TaskAttribute]=s.[TaskAttribute]
when not matched then insert(
	[Area],[Completed],[CompletedBy],[DataLakeModified_DateTime],[DateCompleted],[DateDue],[Lot],[LotFinancialInstance],[Notes],[PARTITION],[RECID],[RECVERSION],[Responsibility],[TaskAttribute]
)
values (
[Area],[Completed],[CompletedBy],[DataLakeModified_DateTime],[DateCompleted],[DateDue],[Lot],[LotFinancialInstance],[Notes],[PARTITION],[RECID],[RECVERSION],[Responsibility],[TaskAttribute]
);

end
GO
