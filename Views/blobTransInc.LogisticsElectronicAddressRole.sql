create   view [blobTransInc].[LogisticsElectronicAddressRole] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElectronicAddress]
,[LocationRole]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.LogisticsElectronicAddressRole t
GO
