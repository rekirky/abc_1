create   view [blobTransInc].[SecurityRole] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ACCESSTOSENSITIVEDATA]
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
 from stage.SecurityRole t
GO
