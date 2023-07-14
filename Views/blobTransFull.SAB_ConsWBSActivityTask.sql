create   view [blobTransFull].[SAB_ConsWBSActivityTask] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequireImage]=case when [RequireImage]=1 then 'Yes' else 'No' end ,RequireImageFlag=cast([RequireImage] as bit)
 from blobFull.SAB_ConsWBSActivityTask t
GO
