create   view [blobTransInc].[SAB_ConsMAReportCode] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CalcId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportCode]
 from stage.SAB_ConsMAReportCode t
GO
