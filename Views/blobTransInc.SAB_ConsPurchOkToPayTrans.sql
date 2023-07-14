create   view [blobTransInc].[SAB_ConsPurchOkToPayTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Amount]=cast([Amount] as numeric(18,2))
,[Approved]=case when [Approved]=1 then 'Yes' else 'No' end ,ApprovedFlag=cast([Approved] as bit)
,[ApprovedBy]
,[ClosedDate]=cast([ClosedDate] as date)
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentDate]=cast([DocumentDate] as date)
,[HasError]=case when [HasError]=1 then 'Yes' else 'No' end ,HasErrorFlag=cast([HasError] as bit)
,[PARTITION]
,[Posted]=case when [Posted]=1 then 'Yes' else 'No' end ,PostedFlag=cast([Posted] as bit)
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[WorkOrderSummary]
,[WrapInsuranceDeduction]=cast([WrapInsuranceDeduction] as numeric(18,2))
,[WrapInsuranceType]
 from stage.SAB_ConsPurchOkToPayTrans t
GO
