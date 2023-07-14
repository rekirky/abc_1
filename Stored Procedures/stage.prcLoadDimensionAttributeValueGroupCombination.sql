create   proc [stage].[prcLoadDimensionAttributeValueGroupCombination] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.DimensionAttributeValueGroupCombination t 
where exists 
	(select 1 from stage.DimensionAttributeValueGroupCombination s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.DimensionAttributeValueGroupCombination with(tablock) as t
using (select * from blobTransInc.DimensionAttributeValueGroupCombination where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DimensionAttributeValueCombination]=s.[DimensionAttributeValueCombination],[DimensionAttributeValueGroup]=s.[DimensionAttributeValueGroup],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[MODIFIEDTRANSACTIONID]=s.[MODIFIEDTRANSACTIONID],[Ordinal]=s.[Ordinal],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DimensionAttributeValueCombination],[DimensionAttributeValueGroup],[MODIFIEDDATETIME],[MODIFIEDTRANSACTIONID],[Ordinal],[PARTITION],[RECID],[RECVERSION]
)
values (
[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DimensionAttributeValueCombination],[DimensionAttributeValueGroup],[MODIFIEDDATETIME],[MODIFIEDTRANSACTIONID],[Ordinal],[PARTITION],[RECID],[RECVERSION]
);

end
GO
