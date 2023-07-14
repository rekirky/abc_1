create   view [blobTransInc].[SAB_ConsZeroPriceIndicator] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AutoApprovePending]=case when [AutoApprovePending]=1 then 'Yes' else 'No' end ,AutoApprovePendingFlag=cast([AutoApprovePending] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsZeroPriceIndicator t
GO
