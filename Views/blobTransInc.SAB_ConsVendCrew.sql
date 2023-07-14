create   view [blobTransInc].[SAB_ConsVendCrew] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Color]
,[ContactParty]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from stage.SAB_ConsVendCrew t
GO
