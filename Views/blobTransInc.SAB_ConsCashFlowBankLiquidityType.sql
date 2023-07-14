create   view [blobTransInc].[SAB_ConsCashFlowBankLiquidityType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
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
 from stage.SAB_ConsCashFlowBankLiquidityType t
GO
