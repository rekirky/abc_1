create   proc [stage].[prcLoadSAB_ConsOptionDescription] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionDescription t 
where exists 
	(select 1 from stage.SAB_ConsOptionDescription s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionDescription with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionDescription where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BuildingTypeId]=s.[BuildingTypeId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[FacadeId]=s.[FacadeId],[LotStructureElement]=s.[LotStructureElement],[Module]=s.[Module],[ModuleEnumID]=s.[ModuleEnumID],[OPTION_]=s.[OPTION_],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TradeType]=s.[TradeType],[ValidFrom]=s.[ValidFrom],[ValidTo]=s.[ValidTo]
when not matched then insert(
	[BuildingTypeId],[DataLakeModified_DateTime],[Description],[FacadeId],[LotStructureElement],[Module],[ModuleEnumID],[OPTION_],[PARTITION],[RECID],[RECVERSION],[TradeType],[ValidFrom],[ValidTo]
)
values (
[BuildingTypeId],[DataLakeModified_DateTime],[Description],[FacadeId],[LotStructureElement],[Module],[ModuleEnumID],[OPTION_],[PARTITION],[RECID],[RECVERSION],[TradeType],[ValidFrom],[ValidTo]
);

end
GO
