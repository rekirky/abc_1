create   view [blobTransFull].[SAB_ConsZeroPriceIndicator] as select 
LSN,[AutoApprovePending]=case when [AutoApprovePending]=1 then 'Yes' else 'No' end ,AutoApprovePendingFlag=cast([AutoApprovePending] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsZeroPriceIndicator t
GO
