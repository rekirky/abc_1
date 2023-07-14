create   view [blobTransFull].[SAB_ConsWBSActivitiesVendCrew] as select 
LSN,[ActivityNumber]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendCrew]
,[Vendor]
 from blobFull.SAB_ConsWBSActivitiesVendCrew t
GO
