create   view [blobTransFull].[DirPersonUser] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[PersonParty]
,[RECID]
,[RECVERSION]
,[USER_]
,[ValidFrom]=cast([ValidFrom] as date)
,[VALIDFROMTZID]
,[ValidTo]=cast([ValidTo] as date)
,[VALIDTOTZID]
 from blobFull.DirPersonUser t
GO
