create   view [blobTransFull].[SecurityUserRole] as select 
LSN,[ASSIGNMENTMODE]
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
 from blobFull.SecurityUserRole t
GO
