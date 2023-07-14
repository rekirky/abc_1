create   view [blobTransInc].[SAB_ConsCSRequestWorkDetailLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Amount]=cast([Amount] as numeric(18,2))
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
 from stage.SAB_ConsCSRequestWorkDetailLine t
GO
