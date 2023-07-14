create   view [blobTransFull].[SAB_ConsCSLotContact] as select 
LSN,[Active]=case when [Active]=1 then 'Yes' else 'No' end ,ActiveFlag=cast([Active] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[Lot]
,[OccupantStatus]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCSLotContact t
GO
