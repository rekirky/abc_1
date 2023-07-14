create   view [blobTransFull].[SAB_ConsColorSchemeAvailability] as select 
LSN,[ColorScheme]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from blobFull.SAB_ConsColorSchemeAvailability t
GO
