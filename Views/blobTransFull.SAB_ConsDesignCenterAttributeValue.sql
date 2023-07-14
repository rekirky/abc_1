create   view [blobTransFull].[SAB_ConsDesignCenterAttributeValue] as select 
LSN,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InstanceValue]
,[IsDeleted]=case when [IsDeleted]=1 then 'Yes' else 'No' end ,IsDeletedFlag=cast([IsDeleted] as bit)
,[LastChangeDateTime]=cast([LastChangeDateTime] as date)
,[LASTCHANGEDATETIMETZID]
,[LastChangeWorker]
,[Location]
,[LocationGroup]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[Value]
 from blobFull.SAB_ConsDesignCenterAttributeValue t
GO
