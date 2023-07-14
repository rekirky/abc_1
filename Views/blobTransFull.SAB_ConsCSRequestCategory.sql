create   view [blobTransFull].[SAB_ConsCSRequestCategory] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SkipCloseApproval]=case when [SkipCloseApproval]=1 then 'Yes' else 'No' end ,SkipCloseApprovalFlag=cast([SkipCloseApproval] as bit)
,[SLADays]
,[TarionRequestCategory]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsCSRequestCategory t
GO
