create   proc [stage].[prcLoadSAB_ConsDocuTable] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsDocuTable t 
where exists 
	(select 1 from stage.SAB_ConsDocuTable s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsDocuTable with(tablock) as t
using (select * from blobTransInc.SAB_ConsDocuTable where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BuildingTypeId]=s.[BuildingTypeId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DocumentDate]=s.[DocumentDate],[DocuType]=s.[DocuType],[FacadeId]=s.[FacadeId],[FinancialInstance]=s.[FinancialInstance],[OH_BlockedDelete]=s.[OH_BlockedDelete],[Orientation]=s.[Orientation],[OrientationEnumID]=s.[OrientationEnumID],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ValidFrom]=s.[ValidFrom],[ValidTo]=s.[ValidTo]
when not matched then insert(
	[BuildingTypeId],[DataLakeModified_DateTime],[Description],[DocumentDate],[DocuType],[FacadeId],[FinancialInstance],[OH_BlockedDelete],[Orientation],[OrientationEnumID],[PARTITION],[RECID],[RECVERSION],[ValidFrom],[ValidTo]
)
values (
[BuildingTypeId],[DataLakeModified_DateTime],[Description],[DocumentDate],[DocuType],[FacadeId],[FinancialInstance],[OH_BlockedDelete],[Orientation],[OrientationEnumID],[PARTITION],[RECID],[RECVERSION],[ValidFrom],[ValidTo]
);

end
GO
