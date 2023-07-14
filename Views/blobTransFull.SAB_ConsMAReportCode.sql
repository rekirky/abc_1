create   view [blobTransFull].[SAB_ConsMAReportCode] as select 
LSN,[CalcId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportCode]
 from blobFull.SAB_ConsMAReportCode t
GO
