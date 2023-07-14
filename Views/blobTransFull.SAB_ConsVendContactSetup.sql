create   view [blobTransFull].[SAB_ConsVendContactSetup] as select 
LSN,[ContactParty]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[HideWorkOrderPrice]=case when [HideWorkOrderPrice]=1 then 'Yes' else 'No' end ,HideWorkOrderPriceFlag=cast([HideWorkOrderPrice] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from blobFull.SAB_ConsVendContactSetup t
GO
