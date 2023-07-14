create   view [blobTransInc].[SAB_ConsWBSActivitiesVendCrew] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ActivityNumber]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendCrew]
,[Vendor]
 from stage.SAB_ConsWBSActivitiesVendCrew t
GO
