create   view [blobTransFull].[SAB_ConsCashFlowBankLiquidityType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[OH_CashFlowDefaultFilterItem]
,[OH_CcCash]
,[OH_NonCcCash]
,[OH_NonOperatingLoan]
,[OH_OperatingLoan]
,[OH_ReadilyAvailCash]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCashFlowBankLiquidityType t
GO
