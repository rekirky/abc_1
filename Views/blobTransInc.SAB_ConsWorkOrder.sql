create   view [blobTransInc].[SAB_ConsWorkOrder] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Canceled]=case when [Canceled]=1 then 'Yes' else 'No' end ,CanceledFlag=cast([Canceled] as bit)
,[CashDiscCode]
,[ContractDetails]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CSInsuranceReason]
,[CSRequest]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DocumentState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='VersioningDocumentState' and e.EnumCode=t.[DocumentState]) ,DocumentStateEnumID=[DocumentState]
,[ElementFinancialInstance]
,[Hidden]=case when [Hidden]=1 then 'Yes' else 'No' end ,HiddenFlag=cast([Hidden] as bit)
,[InvoiceVendor]
,[IsModified]
,[Name]
,[PARTITION]
,[PaymTermId]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UseClaimRequest]=case when [UseClaimRequest]=1 then 'Yes' else 'No' end ,UseClaimRequestFlag=cast([UseClaimRequest] as bit)
,[Vendor]
,[WorkOrderId]
 from stage.SAB_ConsWorkOrder t
GO
