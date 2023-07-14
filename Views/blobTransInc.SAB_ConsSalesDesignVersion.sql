create   view [blobTransInc].[SAB_ConsSalesDesignVersion] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CURRENT_]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesDesign]
,[Version]
 from stage.SAB_ConsSalesDesignVersion t
GO
