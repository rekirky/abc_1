create   view [blobTransInc].[SAB_ConsCSRequestCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SkipCloseApproval]=case when [SkipCloseApproval]=1 then 'Yes' else 'No' end ,SkipCloseApprovalFlag=cast([SkipCloseApproval] as bit)
,[SLADays]
,[TarionRequestCategory]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsCSRequestCategory t
GO
