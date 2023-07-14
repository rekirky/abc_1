create   view [blobTransInc].[SAB_ConsSalesDepositTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AlternateRemitToPerson]
,[Amount]=cast([Amount] as numeric(18,2))
,[Correction]=case when [Correction]=1 then 'Yes' else 'No' end ,CorrectionFlag=cast([Correction] as bit)
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DeductedAmount]=cast([DeductedAmount] as numeric(18,2))
,[DepositReasonId]
,[DepositRefund]
,[LineNumber]
,[Opportunity]
,[PARTITION]
,[PaymentDate]=cast([PaymentDate] as date)
,[PaymMode]
,[PaymReference]
,[PostingProfile]
,[RECID]
,[RECVERSION]
,[SaleOrigin]
,[SalesDesign]
,[TransDate]=cast([TransDate] as date)
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDepositTransType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[Voucher]
 from stage.SAB_ConsSalesDepositTrans t
GO
