create   view [blobTransFull].[SecurityRole] as select 
LSN,[ACCESSTOSENSITIVEDATA]
,[AOTNAME]
,[CONTEXTSTRING]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DEL_ALLOWCURRENTRECORDS]
,[DEL_ALLOWFUTURERECORDS]
,[DEL_ALLOWPASTRECORDS]
,[DEL_ISENABLED]
,[DESCRIPTION]
,[NAME]
,[RECID]
,[RECVERSION]
,[USERLICENSETYPE]
 from blobFull.SecurityRole t
GO
