create   view [blobTransInc].[SAB_ConsDocuType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AllowMultiple]=case when [AllowMultiple]=1 then 'Yes' else 'No' end ,AllowMultipleFlag=cast([AllowMultiple] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsDocuType t
GO
