create   view [blobTransFull].[SAB_ConsInstanceValue] as select 
LSN,[BUILDINGTYPE]
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
 from blobFull.SAB_ConsInstanceValue t
GO
