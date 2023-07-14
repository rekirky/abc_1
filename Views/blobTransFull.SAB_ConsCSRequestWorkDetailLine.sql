create   view [blobTransFull].[SAB_ConsCSRequestWorkDetailLine] as select 
LSN,[Amount]=cast([Amount] as numeric(18,2))
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LineNumber]
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequestLine]
,[RequestWorkDetail]
,[TaxGroup]
,[TaxItemGroup]
 from blobFull.SAB_ConsCSRequestWorkDetailLine t
GO
