create   view [blobTransFull].[SAB_ConsCSRequest] as select 
LSN,[CloseDate]=cast(case when [CloseDate] < cast('1901-01-01' as date) then null else [CloseDate] end as date)
,[CloseReason]
,[ContactMethod]
,[ContactParty]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CSRepresentativeWorker]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Emergency]=case when [Emergency]=1 then 'Yes' else 'No' end ,EmergencyFlag=cast([Emergency] as bit)
,[FinancialInstance]
,[Lot]
,[OrientationScoreResult]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequestCategory]
,[RequestDate]=cast([RequestDate] as date)
,[RequestId]
,[RequestSource]
,[RequestStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestStatus' and e.EnumCode=t.[RequestStatus]) ,RequestStatusEnumID=[RequestStatus]
,[SuspendDate]=cast([SuspendDate] as date)
,[SuspendReason]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsCSRequest t
GO
