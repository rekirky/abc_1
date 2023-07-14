create   proc [stage].[prcLoadSAB_ConsOptionValidation] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionValidation t 
where exists 
	(select 1 from stage.SAB_ConsOptionValidation s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionValidation with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionValidation where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AddSalesPriceToBase]=s.[AddSalesPriceToBase],[AddSalesPriceToBaseFlag]=s.[AddSalesPriceToBaseFlag],[BuildingTypeId]=s.[BuildingTypeId],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FacadeId]=s.[FacadeId],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[LotGroup]=s.[LotGroup],[LotStructureElement]=s.[LotStructureElement],[Mandatory]=s.[Mandatory],[MandatoryFlag]=s.[MandatoryFlag],[OPTION_]=s.[OPTION_],[OptionCategory]=s.[OptionCategory],[OptionRestriction]=s.[OptionRestriction],[OptionRestrictionEnumID]=s.[OptionRestrictionEnumID],[ParentOptionMaster]=s.[ParentOptionMaster],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Subfloor]=s.[Subfloor],[ValidationMode]=s.[ValidationMode],[ValidationModeEnumID]=s.[ValidationModeEnumID],[ValidFrom]=s.[ValidFrom],[ValidTo]=s.[ValidTo]
when not matched then insert(
	[AddSalesPriceToBase],[AddSalesPriceToBaseFlag],[BuildingTypeId],[CREATEDDATETIME],[DataLakeModified_DateTime],[FacadeId],[Location],[LocationGroup],[LotGroup],[LotStructureElement],[Mandatory],[MandatoryFlag],[OPTION_],[OptionCategory],[OptionRestriction],[OptionRestrictionEnumID],[ParentOptionMaster],[PARTITION],[RECID],[RECVERSION],[Subfloor],[ValidationMode],[ValidationModeEnumID],[ValidFrom],[ValidTo]
)
values (
[AddSalesPriceToBase],[AddSalesPriceToBaseFlag],[BuildingTypeId],[CREATEDDATETIME],[DataLakeModified_DateTime],[FacadeId],[Location],[LocationGroup],[LotGroup],[LotStructureElement],[Mandatory],[MandatoryFlag],[OPTION_],[OptionCategory],[OptionRestriction],[OptionRestrictionEnumID],[ParentOptionMaster],[PARTITION],[RECID],[RECVERSION],[Subfloor],[ValidationMode],[ValidationModeEnumID],[ValidFrom],[ValidTo]
);

end
GO
