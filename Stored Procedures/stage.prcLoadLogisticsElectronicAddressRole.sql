create   proc [stage].[prcLoadLogisticsElectronicAddressRole] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LogisticsElectronicAddressRole t 
where exists 
	(select 1 from stage.LogisticsElectronicAddressRole s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LogisticsElectronicAddressRole with(tablock) as t
using (select * from blobTransInc.LogisticsElectronicAddressRole where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[ElectronicAddress]=s.[ElectronicAddress],[LocationRole]=s.[LocationRole],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[DataLakeModified_DateTime],[ElectronicAddress],[LocationRole],[PARTITION],[RECID],[RECVERSION]
)
values (
[DataLakeModified_DateTime],[ElectronicAddress],[LocationRole],[PARTITION],[RECID],[RECVERSION]
);

end
GO
