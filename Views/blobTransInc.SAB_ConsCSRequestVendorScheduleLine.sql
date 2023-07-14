create   view [blobTransInc].[SAB_ConsCSRequestVendorScheduleLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LineNumber]
,[Obligation]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSObligation' and e.EnumCode=t.[Obligation]) ,ObligationEnumID=[Obligation]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RequestLine]
,[RequestVendorSchedule]
 from stage.SAB_ConsCSRequestVendorScheduleLine t
GO
