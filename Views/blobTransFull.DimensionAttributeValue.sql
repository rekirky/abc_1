create   view [blobTransFull].[DimensionAttributeValue] as select 
LSN,[ActiveFrom]=cast([ActiveFrom] as date)
,[ActiveTo]=cast(case when [ActiveTo] < cast('1901-01-01' as date) or [ActiveTo] is null then '9000-01-01' else [ActiveTo] end as date)
,[BackingRecordDataAreaId]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DimensionAttribute]
,[DisplayValue]
,[EntityInstance]
,[GroupDimension]
,[HashKey]
,[IsBalancing_PSN]=case when [IsBalancing_PSN]=1 then 'Yes' else 'No' end ,IsBalancing_PSNFlag=cast([IsBalancing_PSN] as bit)
,[IsBlockedForManualEntry]=case when [IsBlockedForManualEntry]=1 then 'Yes' else 'No' end ,IsBlockedForManualEntryFlag=cast([IsBlockedForManualEntry] as bit)
,[IsDeleted]=case when [IsDeleted]=1 then 'Yes' else 'No' end ,IsDeletedFlag=cast([IsDeleted] as bit)
,[IsSuspended]=case when [IsSuspended]=1 then 'Yes' else 'No' end ,IsSuspendedFlag=cast([IsSuspended] as bit)
,[IsTotal]=case when [IsTotal]=1 then 'Yes' else 'No' end ,IsTotalFlag=cast([IsTotal] as bit)
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OriginalEntityInstance]
,[Owner]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.DimensionAttributeValue t
GO
