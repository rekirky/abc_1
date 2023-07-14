create   view [blobTransFull].[SAB_ConsStatusLogUpdateHistory] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[NewTransDate]=cast([NewTransDate] as date)
,[OriginalTransDate]=cast([OriginalTransDate] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsStatusLogTypeStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[StatusLog]
 from blobFull.SAB_ConsStatusLogUpdateHistory t
GO
