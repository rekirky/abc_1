create   view [blobTransFull].[SAB_ConsCSRequestWorkDetail] as select 
LSN,[Appointment]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FieldPurchOrder]
,[LineNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Request]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestWorkDetailStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Vendor]
 from blobFull.SAB_ConsCSRequestWorkDetail t
GO
