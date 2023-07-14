create   view [blobTransInc].[OH_MainAccountTags] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MainAccountNum]
,[MainAccountTag]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.OH_MainAccountTags t
GO
