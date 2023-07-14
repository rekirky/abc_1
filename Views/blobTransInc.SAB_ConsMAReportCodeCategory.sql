create   view [blobTransInc].[SAB_ConsMAReportCodeCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportCode]
,[RevenueCategory]
,[UseMinimum]
,[Weighting]=cast([Weighting] as numeric(18,6))
 from stage.SAB_ConsMAReportCodeCategory t
GO
