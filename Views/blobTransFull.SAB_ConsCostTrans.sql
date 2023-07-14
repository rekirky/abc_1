create   view [blobTransFull].[SAB_ConsCostTrans] as select 
LSN,[AmountMST]=cast([AmountMST] as numeric(18,2))
,[CostCategory]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[LedgerDimension]
,[PARTITION]
,[PostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerPostingType' and e.EnumCode=t.[PostingType]) ,PostingTypeEnumID=[PostingType]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[Voucher]
 from blobFull.SAB_ConsCostTrans t
GO
