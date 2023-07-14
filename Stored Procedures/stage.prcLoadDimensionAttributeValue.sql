create   proc [stage].[prcLoadDimensionAttributeValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.DimensionAttributeValue t 
where exists 
	(select 1 from stage.DimensionAttributeValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.DimensionAttributeValue with(tablock) as t
using (select * from blobTransInc.DimensionAttributeValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ActiveFrom]=s.[ActiveFrom],[ActiveTo]=s.[ActiveTo],[BackingRecordDataAreaId]=s.[BackingRecordDataAreaId],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DimensionAttribute]=s.[DimensionAttribute],[DisplayValue]=s.[DisplayValue],[EntityInstance]=s.[EntityInstance],[GroupDimension]=s.[GroupDimension],[HashKey]=s.[HashKey],[IsBalancing_PSN]=s.[IsBalancing_PSN],[IsBalancing_PSNFlag]=s.[IsBalancing_PSNFlag],[IsBlockedForManualEntry]=s.[IsBlockedForManualEntry],[IsBlockedForManualEntryFlag]=s.[IsBlockedForManualEntryFlag],[IsDeleted]=s.[IsDeleted],[IsDeletedFlag]=s.[IsDeletedFlag],[IsSuspended]=s.[IsSuspended],[IsSuspendedFlag]=s.[IsSuspendedFlag],[IsTotal]=s.[IsTotal],[IsTotalFlag]=s.[IsTotalFlag],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[OriginalEntityInstance]=s.[OriginalEntityInstance],[Owner]=s.[Owner],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[ActiveFrom],[ActiveTo],[BackingRecordDataAreaId],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DimensionAttribute],[DisplayValue],[EntityInstance],[GroupDimension],[HashKey],[IsBalancing_PSN],[IsBalancing_PSNFlag],[IsBlockedForManualEntry],[IsBlockedForManualEntryFlag],[IsDeleted],[IsDeletedFlag],[IsSuspended],[IsSuspendedFlag],[IsTotal],[IsTotalFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[OriginalEntityInstance],[Owner],[PARTITION],[RECID],[RECVERSION]
)
values (
[ActiveFrom],[ActiveTo],[BackingRecordDataAreaId],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DimensionAttribute],[DisplayValue],[EntityInstance],[GroupDimension],[HashKey],[IsBalancing_PSN],[IsBalancing_PSNFlag],[IsBlockedForManualEntry],[IsBlockedForManualEntryFlag],[IsDeleted],[IsDeletedFlag],[IsSuspended],[IsSuspendedFlag],[IsTotal],[IsTotalFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[OriginalEntityInstance],[Owner],[PARTITION],[RECID],[RECVERSION]
);

end
GO
