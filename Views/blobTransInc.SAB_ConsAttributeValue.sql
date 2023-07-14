create   view [blobTransInc].[SAB_ConsAttributeValue] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InstanceValue]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Value]
 from stage.SAB_ConsAttributeValue t
GO
