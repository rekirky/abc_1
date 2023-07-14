create   view [blobTransFull].[SAB_ConsDocuType] as select 
LSN,[AllowMultiple]=case when [AllowMultiple]=1 then 'Yes' else 'No' end ,AllowMultipleFlag=cast([AllowMultiple] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsDocuType t
GO
