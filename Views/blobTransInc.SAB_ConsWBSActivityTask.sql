create   view [blobTransInc].[SAB_ConsWBSActivityTask] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequireImage]=case when [RequireImage]=1 then 'Yes' else 'No' end ,RequireImageFlag=cast([RequireImage] as bit)
 from stage.SAB_ConsWBSActivityTask t
GO
