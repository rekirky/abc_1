create   view [blobTransFull].[SAB_ConsCSRequestVendorScheduleLine] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LineNumber]
,[Obligation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSObligation' and e.EnumCode=t.[Obligation]) ,ObligationEnumID=[Obligation]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequestLine]
,[RequestVendorSchedule]
 from blobFull.SAB_ConsCSRequestVendorScheduleLine t
GO
