create   view [blobTransFull].[SAB_ConsSaleOrigin] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FINANCIALINSTANCE]
,[InstanceRelationType]
,[LotStructureElement]
,[Name]
,[PARTITION]
,[QUOTATIONJOUR]
,[RECID]
,[RECVERSION]
,[RELATIONTYPE]
 from blobFull.SAB_ConsSaleOrigin t
GO
