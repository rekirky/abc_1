create   view [blobTransFull].[SAB_ConsCashFlowBankType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[OH_CashFlowBankType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='OH_CashFlowBankType' and e.EnumCode=t.[OH_CashFlowBankType]) ,OH_CashFlowBankTypeEnumID=[OH_CashFlowBankType]
,[OH_CashFlowDefaultFilterItem]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCashFlowBankType t
GO
