create   view [blobTransInc].[SAB_ConsCSRequestLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Category]
,[CloseDate]=cast([CloseDate] as date)
,[CloseReason]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Diagnosis]
,[Item]
,[LineNumber]
,[Location]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Request]
,[RequestOrientationTask]
,[RequestStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestStatus' and e.EnumCode=t.[RequestStatus]) ,RequestStatusEnumID=[RequestStatus]
,[RootCause]
 from stage.SAB_ConsCSRequestLine t
GO
