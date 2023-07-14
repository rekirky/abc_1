create   view [blobTransFull].[SAB_ConsSalesDesignVersion] as select 
LSN,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CURRENT_]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesDesign]
,[Version]
 from blobFull.SAB_ConsSalesDesignVersion t
GO
