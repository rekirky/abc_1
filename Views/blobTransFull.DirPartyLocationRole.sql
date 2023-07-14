create   view [blobTransFull].[DirPartyLocationRole] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LocationRole]
,[PARTITION]
,[PartyLocation]
,[RECID]
,[RECVERSION]
 from blobFull.DirPartyLocationRole t
GO
