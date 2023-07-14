create   view [blobTransInc].[SAB_ConsWorkOrderClaimRequestJour] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ClaimRequestDateTime]=cast([ClaimRequestDateTime] as date)
,[CLAIMREQUESTDATETIMETZID]
,[ClaimRequestId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentDate]=cast([DocumentDate] as date)
,[InvoiceId]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Responsibility]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderClaimRequestStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[TransDate]=cast([TransDate] as date)
,[WorkOrder]
 from stage.SAB_ConsWorkOrderClaimRequestJour t
GO
