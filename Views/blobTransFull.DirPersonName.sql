create   view [blobTransFull].[DirPersonName] as select 
LSN,[CREATEDBY]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FirstName]
,[LastName]
,[LastNamePrefix]
,[MiddleName]
,[MODIFIEDBY]
,[PARTITION]
,[Person]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[VALIDFROMTZID]
,[ValidTo]=cast([ValidTo] as date)
,[VALIDTOTZID]
 from blobFull.DirPersonName t
GO
