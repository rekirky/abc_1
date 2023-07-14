create   view [blobTransInc].[SecurityUserRole] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ASSIGNMENTMODE]
,[ASSIGNMENTSTATUS]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SECURITYROLE]
,[USER_]
,[VALIDFROM]=cast([VALIDFROM] as date)
,[VALIDFROMTZID]
,[VALIDTO]=cast([VALIDTO] as date)
,[VALIDTOTZID]
 from stage.SecurityUserRole t
GO
