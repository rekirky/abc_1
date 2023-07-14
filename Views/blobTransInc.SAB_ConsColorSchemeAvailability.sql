create   view [blobTransInc].[SAB_ConsColorSchemeAvailability] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ColorScheme]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from stage.SAB_ConsColorSchemeAvailability t
GO
