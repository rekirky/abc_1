create   view [blobTransInc].[SAB_ConsDesignCenterAttributeValue] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
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
 from stage.SAB_ConsDesignCenterAttributeValue t
GO
