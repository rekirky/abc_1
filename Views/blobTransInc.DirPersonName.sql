create   view [blobTransInc].[DirPersonName] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
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
 from stage.DirPersonName t
GO
