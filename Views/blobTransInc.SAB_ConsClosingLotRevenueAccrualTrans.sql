create   view [blobTransInc].[SAB_ConsClosingLotRevenueAccrualTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Amount]=cast([Amount] as numeric(18,2))
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[LedgerDimension]
,[PARTITION]
,[PostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerPostingType' and e.EnumCode=t.[PostingType]) ,PostingTypeEnumID=[PostingType]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[TransDate]=cast([TransDate] as date)
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAccrualTransType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[Voucher]
 from stage.SAB_ConsClosingLotRevenueAccrualTrans t
GO
