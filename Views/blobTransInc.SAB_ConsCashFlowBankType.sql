create   view [blobTransInc].[SAB_ConsCashFlowBankType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[OH_CashFlowBankType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='OH_CashFlowBankType' and e.EnumCode=t.[OH_CashFlowBankType]) ,OH_CashFlowBankTypeEnumID=[OH_CashFlowBankType]
,[OH_CashFlowDefaultFilterItem]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsCashFlowBankType t
GO
