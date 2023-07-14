create   view [blobTransInc].[SAB_ConsInstanceValue] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BUILDINGTYPE]
,[CLOSINGTASK]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ELEMENTOPENINGTASK]
,[InstanceRelationType]
,[LEAD]
,[LOT]
,[LOTSTRUCTUREELEMENT]
,[OPPORTUNITY]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RELATIONTYPE]
 from stage.SAB_ConsInstanceValue t
GO
