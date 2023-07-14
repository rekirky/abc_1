create   view [blobTransFull].[SAB_ConsMAReportCodeCategory] as select 
LSN,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportCode]
,[RevenueCategory]
,[UseMinimum]
,[Weighting]=cast([Weighting] as numeric(18,6))
 from blobFull.SAB_ConsMAReportCodeCategory t
GO
