create   view [blobTransInc].[SAB_ConsVendContactSetup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ContactParty]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[HideWorkOrderPrice]=case when [HideWorkOrderPrice]=1 then 'Yes' else 'No' end ,HideWorkOrderPriceFlag=cast([HideWorkOrderPrice] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from stage.SAB_ConsVendContactSetup t
GO
